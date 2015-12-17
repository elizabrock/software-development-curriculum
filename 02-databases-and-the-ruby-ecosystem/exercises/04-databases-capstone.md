# Databases Capstone

This capstone is intended to demonstrate your mastery of basic git, project documentation (README, comments), writing integration tests, writing unit tests, basic-to-intermediate SQL and basic Ruby.

This project will:

  1. Store & access data across multiple database tables
  2. Have a text-based command-line interface
  3. Include at least one interesting/complex query or calculation
  4. Should be relatively simple feature list, as the focus is on SQL mastery

You can use gems for non-core functionality (e.g. for the interface, not for automating database interaction).

<!-- Instructor Note:  You can see how we normally do in-class discussion for this in: database-capstones-in-class-discussion.pdf -->

## Project Selection (and Repo Creation)
> requires: project-ideas

For this milestone, think about possible projects and come to class prepared with several ideas.

In class, we will go over your project ideas and make sure that they are suitable for the project's goals.

Project Idea Inspiration:

- Text-based versions of webapps, or
- Duplicate a text-based app that you like, or
- Draw from the list of past project ideas, in nss/project-ideas.md

## Create the README
> requires: sample-README

1. Make git repo WITH README:
  * Project Name
  * Elevator Pitch (2 sentence-ish description of the idea)
  * Project Requirements (e.g. CRUD, etc. from the project requirements above)
  * Feature List (Outline, short list of 2-3 things)
  * What interesting query/report/insight will your app have?
  * If you're pulling data from somewhere, where will you be getting it? Include a link to documentation or data
2. Put some of that sample data in your repository in a directory named 'data'
2. Request Feedback on that (either in-class or via. other communication)
3. Wait for the feedback


## Write requirements and user stories
> requires basic-project-planning, user-stories

Write a set of user stories describing your features, based on the user stories article.

Commit your list of user stories to your project in the doc directory (e.g. doc/user_stories.md) of your project.

2. Request Feedback on that (either in-class or via. other communication)
3. Wait for the feedback

## Draft and ERD for your project / Plan the database structure
> requires: data-modeling

Now that you know the features your program will support, and the data that you have available to you, it's time to start thinking about how that data will fit together.

For this exercise, start by writing down all of the high-level concepts (think nouns, a.k.a. models) in your project.

For example, in the Grocery Price Tracker Application, the major concepts are:

  * Grocery Items
  * Purchases (of Grocery Items)

Once you've thought on that for a while, take a look at your feature list and figure out what sort of data you'll need to store about each of those concepts.

For the Grocery Price Tracker Application:

  * Grocery Items:
    * Name (e.g. Diced Tomatoes)
  * Purchases:
    * Grocery Item
    * Brand Name (e.g. Hunt's)
    * Unit Quantity (e.g. 10)
    * Unit Size (e.g. ounces)
    * Price
    * Date Purchased

I was tempted to add "Category" to "Grocery Items", but looking at my feature list, I realized that it wasn't required for any of my actual features.   Take a look and make sure that you need all of the data that you're planning on tracking.

Read about the SOLID principles, and in particular the Single Responsibility Principle:

  * http://www.hanselminutes.com/145/solid-principles-with-uncle-bob-robert-c-martin
  * http://en.wikipedia.org/wiki/Single_responsibility_principle

The output of this milestone should be an ERD (or similar) describing how the data will be modeled.

## Part 4: Set up your project (1 day)
> requires: minitest

Include basic tests for input validation, as in: https://github.com/elizabrock/nss-capstone-2-example/tree/v0.1

We will be going through this for the class project, as you work through it for your individual projects.

## Write the first feature of the application / Database connections (1 day)

Implement the "Create" part of CRUD for at least one of your models, as in: https://github.com/elizabrock/nss-capstone-2-example/tree/v0.2

We will be going through this for the class project, as you work through it for your individual projects.

<!-- Instructor Note: Make sure to follow the ActiveRecord API's naming scheme for our database methods, so that we can easily switch this to be ActiveRecord-baked in the final milestone -->

## Keep going!

Continue working on the project, adding one feature at a time until you have all of your functionality completed.

## In-class project presentations

We will present the projects in-class.  Presentation order will be announced day-of.

## Refactoring

This milestone will be explained once we reach it.

<!-- Instructor Note: This is where we refactor the projects into ActiveRecord!  It will blow their minds! -->
