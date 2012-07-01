Given /^I am a regstered user$/ do
  @username = 'sauce-gem-dev'
  @password = ENV['SAUCE_PASSWORD']

  if @password.nil?
    puts "You haven't set a password silly"
  end
end

Given /^I have an invalid password$/ do
  @password = 'lolsthispasswordiswrong'
end

When /^I attempt to log into the site$/ do
  visit 'https://www.saucelabs.com'
  click_link 'Login'
  # Assert that we end up on the login page
  find('input#username').should_not be_nil

  fill_in 'username', :with => @username
  # Using the "hard" way to set this password field right now due to a slight
  # bug on the Sauce Labs login page.
  find('input#password').set(@password)

  find('a#submit').click
end

Then /^I should be told my credentials are invalid$/ do
  errorbox = find('div.error')
  errorbox.should_not be_nil
  errorbox.should be_visible
end

