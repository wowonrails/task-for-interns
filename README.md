# Task for interns

[![Build Status](https://semaphoreci.com/api/v1/wowonrails/task-for-interns/branches/master/shields_badge.svg)](https://semaphoreci.com/wowonrails/task-for-interns)
[![Maintainability](https://api.codeclimate.com/v1/badges/1744dcb0311b297d7c47/maintainability)](https://codeclimate.com/github/wowonrails/task-for-interns/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/1744dcb0311b297d7c47/test_coverage)](https://codeclimate.com/github/wowonrails/task-for-interns/test_coverage)

## Description

Feedbacks generator with email notifications

## Acceptance Criteria

- Использовать Rails-Base как основу проекта
- Результат должен быть задеплоен на Heroku
- Сделать аккуратный дизайн
- Использовать стандартные для компании инструменты: devise, pundit, draper, interactors etc (при необходимости!)
- Должны быть тесты для каждой фичи, описанной ниже:

```
As Visitor I want to leave feedback
  When I open New Feedback page
  Then I see form with required fields: name, email, text
  When I fill all 3 fields
  And When I click "Submit feedback"
  I should see message "Feedback was successfully send!"
  And email with feedback sent to admin@example.com

As User I want to see pre-filled name and email in feedback form
  Given I am authenticated as John Smith (john@example.com)
  When I open New Feedback page
  Then I should see name field pre-filled with "John Smith"
  And I should see email field pre-filled with "john@example.com"

As Admin User I want to see list of all Feedbacks
  Given I am authenticated as Admin (admin@example.com)
  And there are Feedbacks in database
  When I open Feedbacks page
  Then I see table with list of all feedbacks sorted by "newest first"
  And I see pagination under the table

As Admin User I want to search through feedbacks
  Given I am authenticated as Admin (admin@example.com)
  And there are feedback with text "Hello" from John Smith (john@example.com) in database
  And there are feedback with text "Help" from Michael Brown (misha@example.com) in database
  When I open Feedbacks page
  Then I see Search Form with text input and submit button
  When I fill search input with "john"
  Then I see feedback from John Smith
  And I do not see feedback from Michael
  When I fill search input with "Help"
  Then I see feedback from Michael
  And I do not see feedback from John Smith
```

## Quick Start

```bash
# clone repo
git clone git@github.com:wowonrails/task-for-interns.git
cd task-for-interns

# run setup script
bin/setup

# configure ENV variables in .env
vim .env

# run server on 5000 port
bin/server
```

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and rails_best_practices for the app
* `bin/ci` - should be used in the CI to run specs

## Staging

* https://task-for-interns.herokuapp.com/
