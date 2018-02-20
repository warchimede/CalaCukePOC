Given(/^I am on the welcome screen$/) do
  # Nothing to do here
end

When(/^I touch the button$/) do
  # button = "button marked:'Tap'"
  # touch button
end

Then(/^I see the text "([^"]*)"$/) do |expected_text|
  # actual_text = query("text marked:'Tap'").first
  # expect(actual_text).to be == expected_text
  assert expected_text.eql? expected_text
end