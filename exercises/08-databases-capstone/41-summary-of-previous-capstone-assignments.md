## Capstone 2, Part 1: README

Complete the README for your project, as per: https://github.com/elizabrock/NSS-Syllabus-Cohort-3/blob/master/unit2-sql-and-the-ruby-ecosystem/21-final-project-selections-and-assignment.md

## Capstone 2, Part 2: User Stories

After getting feedback for the previous lesson, work on your user stories: https://github.com/elizabrock/NSS-Syllabus-Cohort-3/blob/master/unit2-sql-and-the-ruby-ecosystem/23-user-stories.md

## Capstone 2, Part 3: Planning the data

Now that you know the features your program will support and the data that you have available to you, it's time to start thinking about how that data will fit together.

For this exercise, write down all of the high-level concepts (think nouns, a.k.a. models) in your project.

For example, in the Grocery Price/Cal Application, the major concepts are:

  * Grocery Items
  * Purchases (of Grocery Items)

Once you've thought on that for a while, take a look at your feature list and figure out what sort of data you'll need to store about each of those concepts.

For the Grocery Price/Cal Application:

  * Grocery Items:
    * Name (e.g. Diced Tomatoes)
  * Purchases:
    * Grocery Item
    * Brand Name (e.g. Hunt's)
    * Quantity (e.g. 10)
    * Unit Size (e.g. ounces)
    * Price
    * Date Purchased

I was tempted to add "Category" to "Grocery Items", but looking at my feature list, I realized that it wasn't required for any of my actual features.   Take a look and make sure that you need all of the data that you're planning on tracking.

## Part 4: Set up your project

Include basic tests for input validation, as in: https://github.com/elizabrock/nss-capstone-2-example/tree/v0.1

This was assigned for Tuesday afternoon.

## Part 5: Database connections

Implement the "Create" part of CRUD for at least one of your models, as in: https://github.com/elizabrock/nss-capstone-2-example/tree/v0.2

This was assigned for Wednesday afternoon.

## Part 6: Think about models

So far, we've been making ad-hoc queries inside of `grocerytracker`.  In the principle of object oriented design, we should instead be thinking about things in terms of classes.

Read about the SOLID principles, and in particular the Single Responsibility Principle:

  * http://www.hanselminutes.com/145/solid-principles-with-uncle-bob-robert-c-martin
  * http://en.wikipedia.org/wiki/Single_responsibility_principle


Then think about how you can refactor your existing work to use classes.  In rails, "model" classes (generally, database-backed) are kept all in one place (a.k.a. the models directory) and each model class is responsible for knowing everything about that domain concept.  This includes: how to validate the data, how to format information for display (to an extent) and how it relates to other models.

You only have one model at this point, so this is a great time to pull all of that information into one class.

Today, try to take everything related to your first model and pull it into a class.

For our in-class example, this would mean a `Purchase` class with methods like:

  * create
  * update
  * delete
  * self.search
  * self.all
  * to\_s
