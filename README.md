# Howitzer
[![Gem Version](http://img.shields.io/gem/v/howitzer.svg)][gem]
[![Build Status](https://travis-ci.org/strongqa/howitzer.svg?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/romikoops/howitzer.png)][gemnasium]
[![Code Climate](https://codeclimate.com/github/romikoops/howitzer.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/strongqa/howitzer/badge.png?branch=develop)][coveralls]
[![License](http://img.shields.io/badge/license-MIT-blue.svg)][license]

[gem]: https://rubygems.org/gems/howitzer
[travis]: https://travis-ci.org/strongqa/howitzer
[gemnasium]: https://gemnasium.com/romikoops/howitzer
[codeclimate]: https://codeclimate.com/github/romikoops/howitzer
[coveralls]: https://coveralls.io/r/strongqa/howitzer?branch=develop
[license]: https://github.com/strongqa/howitzer/blob/master/LICENSE

Howitzer is a Ruby-based framework for acceptance testing.

It was originally developed for testing web applications, but you can also use it for API testing and web service testing.

The framework was built with modern patterns, techniques, and tools in automated testing. For details, please see [Test Framework Design](https://github.com/strongqa/howitzer/wiki/Test-Framework-Design).

## Key Benefits
- Independent of test web application, its technologies and lanquage.
- Fast installation of the complete testing infrastructure (takes less than 5 minutes).
- Flexible configuration of the test framework.
- Possibility to choose between Cucumber or RSpec BDD tool.
- Integration with SauceLabs, Testingbot, BrowserStack and MailGun web services.
- Easy tests support.
- Ability to execute tests against to both browserless driver and actual browsers with no changes in your tests.
- Searches for broken links.


## Documentation
Refer to the [Getting Started](https://github.com/strongqa/howitzer/blob/develop/GETTING_STARTED.md) document to start working with *Howitzer*.

You can also find the Rdoc documentation on [Rubygems](https://rubygems.org/gems/howitzer).

## Related Products
* [Howitzer Example](https://github.com/strongqa/howitzer_example) – an example of Howitzer based project for demo web application.
* [Howitzer Stat](https://github.com/strongqa/howitzer_stat) – is the extension to Howitzer product. It is used for automated tests coverage visualization of web pages.

## Requirements
* Supported OS: Mac OS X, Linux, Windows
* Ruby 1.9.3+
* [DevKit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit#installation-instructions)(For **Windows** only)
* [PhantomJS](http://phantomjs.org/download.html)
* [ChromeDriver](https://code.google.com/p/selenium/wiki/ChromeDriver)

## Setup
To install, type

```bash
gem install howitzer
```

## Usage
Browse to a desired directory where a new project will be created.

To deploy the framework with Cucumber, type:

```bash
howitzer new <PROJECT NAME> --cucumber
```

The following folders and files will be generated:
```
config/
  cucumber.yml
  default.yml
  custom.yml
tasks/
  common.rake
  cucumber.rake
  rspec.rake
emails/
  example_email.rb
features/
  support/env.rb
  step_definitions/common_steps.rb
  example.feature
pages/
  example_page.rb
  example_menu.rb
boot.rb
Gemfile
Rakefile
.gitignore
```

With Rspec:

```bash
howitzer new <PROJECT NAME> --rspec
```

With both Cucumber and Rspec:

```bash
howitzer new <PROJECT NAME> --cucumber --rspec
```

### Configuration
Learn and specify correct default settings in the `config/default.yml` file. For more details, please refer to the original [sexy_settings](https://github.com/romikoops/sexy_settings) gem.

## Test Implementation Workflow

- Prepare features and scenarios
- Implement appropriate pages in the `pages` folder. For details, refer to  [Page Object Pattern](https://github.com/strongqa/howitzer/wiki/PageObject-pattern).
- Implement emails in `emails` folder.
- Implement scenarios:
  * For Cucumber:
    1. Read and learn [Cucumber Best Practices](https://github.com/strongqa/howitzer/wiki/Cucumber-Best-Practices)
    2. Implement step definitions in the `features/step_definitions/common_steps.rb` file.
  * For Rspec: Use [DSL](https://github.com/jnicklas/capybara/blob/master/lib/capybara/rspec/features.rb) provided by Capybara to create descriptive acceptance tests.
- Debug feature against to desired driver.
- Enjoy it!

## Rake Tasks

You can get a list of all available tasks by typing the following command:

```bash
rake -T

```

## Upgrading Howitzer
Before attempting to upgrade an existing project, you should be sure you have a good reason to upgrade. You need to balance several factors: the need for new features, the increasing difficulty of finding support for old code, and your available time and skills, to name a few.

From version _v1.1.0_ howitzer provides **howitzer update** command. After updating the Howitzer version in the Gemfile, run this rake task. This will help you with the creation of new files and changes of old files in an interactive session.

```
$ howitzer update
        *  Config files generation ...
            Identical 'config/custom.yml' file
            Added 'config/default.yml' file
        * Root files generation ...
            Added '.gitignore' file
            Conflict with 'Gemfile' file
              Overwrite 'Gemfile' file? [Yn]:Y
                Forced 'Gemfile' file
            Identical 'Rakefile' file
            Conflict with 'boot.rb' file
              Overwrite 'boot.rb' file? [Yn]:n
                Skipped 'boot.rb' file

...
```
Don't forget to review the difference, to see if there were any unexpected changes and merge them. It is easy if your project is under revision control systems like _Git_.

## Additional Information
* [Rubygems](https://rubygems.org/gems/howitzer)
* [Mailing list](https://groups.google.com/forum/#!forum/howitzer_ruby)
* [Issues](https://github.com/strongqa/howitzer/issues)

## Contributing

1. Fork the project.
2. Create a new feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Added some feature'`).
4. Push the branch (`git push origin my-new-feature`).
5. Create a new pull request.
