# In-Class Rails Project

## In-Class: Picking the Project
> requires: project-ideas

As a class, we will pick a simple web application to build.  Typically, we choose to clone existing web applications.  Past projects include a twitter clone, a tumblr clone, a medium clone, a gardening application clone, a Trello clone, and more.

## In-Class: Planning the Project (AM)
> requires basic-project-planning, user-stories, data-modeling

As a class, we will write user stories and project requirements.

## Homework: Plan the ERD for the application (PM)

Create a proposed ERD for the project, given the data from our project planning.

## In-Class: Live-coding the initial features of the project (3-4 days, in the mornings)
> requires: introduction-to-rails, introduction-to-haml, asset-pipeline-overview, introduction-to-sass, introduction-to-coffeescript, model-view-controller-pattern

This is a place-holder milestone for the in-class live-coding lectures as we build a basic Rails application from scratch.

## Pairing up to research gems (1-day)
> requires: software-versioning

In this milestone, you will be paired up with a classmate to research and report on a gem, or type of gem.

In the afternoon, you will give lightning talks:
* ~5m
* What the gem does
* How to get started
* What the output of the gem is

Gems:
* Omniauth and OAuth
* VCR and Webmock
* ActiveAdmin
* kaminari
* ActionMailer and letter_opener
* Resque
* Delayed Job
* Figaro
* bye-bug
* Prawn
* Stripe (w/ Rails)
* carrierwave / minimagick
* Redcloth
* Fog
* cancancan
* Vanity
* Timecop

Patterns:
* User stamping
* Activity feeds
* Geocoding / Maps
* Permalinks / Slugs
* Web content scrapers

## Pairing up to add a features
> requires: rails-patterns-and-libraries, rspec-unit-testing, testing-in-rails

In this milestone, you will be paired up with a classmate to add a feature to our basic Rails application.

1. Split into pairs
2. Get a feature assignment (Wed AM)
3. Write a user story and research the gem or gems you will use (Wed PM)
4. Talk over user stories and ?? in class (Thur AM)
5. Implement features and issue pull requests (Thur PM)
6. Friday at library, cleaning up the features based on the pull request feedback, issue final PR if needed (Friday)
7. Lightning talk on how the feature was implemented/solved (Monday AM)
    * Techniques/Gems used
    * What it does
    * Going over the implementation

<!-- Instructor Note:

Below is the pairings for the feature additions from the twitter-clone project. It was called Squawker, and tweets were called Squeeks.

1. Jay and Pete Dunlap
  * login with twitter (omniauth, vcr, webmock)
2. Amanda and Rachel
  * image upload for squeeks (carrierwave, fog)
3. Peter H. and Ben Blackburn
  * geolocation of squeeks (?)
4. Benjamen Brescka and JL
  * admin portal (activeadmin)
5. Lori and Brian Threlkeld
  * basic styling with zurb foundation gem
  * better forms (simple_form)
6. Arielle and Katie
  * permalinks (friendly_id)
7. Jerry and Lars
  * soft delete for auditing and to keep tweets from breaking (old standard: acts_as_paranoid, reasearch it and possibly implement manually)
8. Mike and Ashley
  * pagination (kaminari)
9. Gabrielle and Brian Arenz
  * email notifications of @mentions (ActionMailer, letter_opener, take advantage of the existing email_spec steps)
10. Warren and Drew
  * "friends only" posts
11. Leah and Scott
  * autosuggest @reply usernames (ajax)

-->

## Follow Along: Deploying the in-class application
> requires: deploying-to-heroku

We will deploy the project to Heroku.  Each student will make their own deployment as practice.
