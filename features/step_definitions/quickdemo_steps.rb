When /^I try to run a test$/ do
  click_link 'Run a Test'
end

Then /^I should be asked to create an account$/ do
  find_button("Yes! Sign Me Up").should be_visible
end

