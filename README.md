# CalaCukePOC [Calabash](https://github.com/calabash/calabash-ios) [Cucumber](https://cucumber.io/)

## The Project
The goal of the project is to demonstrate the use of [cucumber](https://cucumber.io/) and [calabash](https://github.com/calabash/calabash-ios) on a very simple iOS app.

## Setup
### Install [Bundler](https://bundler.io/)
- From a terminal, execute command `gem install bundler`
- Check your installation with the following command `bundler --version`

### Create a Gemfile
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

### Create a specific `-cal` target for Calabash use
Follow this tutorial: https://github.com/calabash/calabash-ios/wiki/Tutorial%3A--Creating-a-cal-Target

### Create a Podfile
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

### Execute `calabash-ios gen`
This command will create the `features` directory containing a sample test file, the `steps` directory that will be home to the ruby code 
Pour créer les dossiers features et support…

### Puis relancer la commande `cucumber` pour vérifier qu’on est capable de lancer les tests

## First test
- test gherkin
- steps d’interprétation

## Commande `cucumber` pour lancer les tests
Yatta !