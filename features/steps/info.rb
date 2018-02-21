Given(/^I am on the welcome screen$/) do
  # Nothing to do here, just wait for things to show
  wait_for do
    !query("*").empty?
  end
end

When(/^I touch the button$/) do
  button = query("button marked:'Tap'").first
  touch button
end

Then(/^I see the success message "([^"]*)"$/) do |txt|
  wait_for_element_exists("* text:'#{txt}'")
end