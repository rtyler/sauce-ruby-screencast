Given /^I am not logged in$/ do
  # no op
end

When /^I start a Scout session$/ do
  visit 'https://saucelabs.com/scouthome'
  find('input.chooserInputBox').set('https://github.com')
  within('div.scoutbar') do
    find('a.chooserSubmitButton').click
  end
end

Then /^I should be given a Scout trial run$/ do
  current_url.should match('/scout/live')
end

