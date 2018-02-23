# CalaCukePOC [Calabash](https://github.com/calabash/calabash-ios)🍆 [Cucumber](https://cucumber.io/)🥒

## The Project
The goal of the project is to demonstrate the use of [cucumber](https://cucumber.io/)🥒 and [calabash](https://github.com/calabash/calabash-ios)🍆 on a very simple iOS app.

## Setup
### Install [Bundler](https://bundler.io/) 📦
- From a terminal window, execute this command: `gem install bundler`
- Check your installation with the following command `bundler --version`

### Create a Gemfile 💎
In your project's root directory, create a file called **Gemfile**, with the following content:
```ruby
ruby '2.3.3'

source 'https://rubygems.org' do
	gem 'cocoapods'
	gem 'calabash-cucumber', '~> 0.21.4'
end
```

This file will name all your command line dependencies for this project.
The `bundle install` command will then install them.
To use any of the `pod` or `cucumber` commands, prepend it by `bundle exec`.

### Create a specific `-cal` target for Calabash use 🍆
Follow this tutorial: https://github.com/calabash/calabash-ios/wiki/Tutorial%3A--Creating-a-cal-Target

### Create a Podfile 🍫
In your project's root directory, create a file called **Podfile**, with the following content:
```ruby
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'

use_frameworks!

target 'YOUR-TARGET-NAME' do
  
end

target 'YOUR-TARGET-NAME-cal' do
  pod 'Calabash'
end
```

This file will specify all your `pod` depedencies for the current project.
Be aware that only your `-cal` target depends on the `Calabash` pod.
Use `bundle exec pod install` to install your dependencies.

### Calabash scaffolding 🍆📁
Execute `calabash-ios gen` in your terminal window. 
This command will create the `features` directory containing:
- a `sample.feature` test file, written in gherkin (aka "Given, When, Then")
- the `steps` directory that will be home to the ruby code which translates the `gherkin` tests into actual automation on your app
- the `support` directory, with more ruby scripts that make the whole automation work.

### Dry run 🤖
Now you can execute `bundle exec cucumber` for an end-to-end check that the iOS simulator is launched and that the sample test runs and passes.

## First real test ☝🏽
Here is an example of a simple test related to this Xcode project:
- `./features/tap.feature`:
```gherkin
Feature: Get information
  As a user
  I want to be able to tap on a button
  So I can see information in a popup

  Scenario: Tap on the button shows popup
    Given I am on the welcome screen
    When I touch the button
    Then I see the success message "Calabash Success !"
```
- `./features/steps/tap.rb`:
```ruby
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
```

## `bundle exec cucumber` for the win ! 🍾💯