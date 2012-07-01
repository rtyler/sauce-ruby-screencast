Given /^I am on the home page$/ do
  visit 'https://www.saucelabs.com'
end

When /^I subscribe$/ do
  click_link 'Subscribe Now'
end

Then /^I should see the pricing plans$/ do
  current_url.should match('/pricing')
  page.should have_css('div#pricingContainer')
end

