# Refactoring to ActiveRecord: Step 1

The first thing we did in preparing to move our projects to ActiveRecord is to move our database bootstraping tasks to use ActiveRecord and migrations.

## Order of operations:

I've now created a specific branch with each of these steps broken up into smaller commits.

1. Commit 1: https://github.com/elizabrock/nss-capstone-2-example/commit/990f8bd941a08ea7405e0eddf0cdc9b9e6e8b5f3
  1. (optional) Refactor how we require models
2. Commit 2: https://github.com/elizabrock/nss-capstone-2-example/commit/aaccc82aaed714bf8396b2d3f4214433dc972731
  1. Add ActiveRecord to Gemfile
  2. Set up config/database.yml to match your database and environment names
  2. Update Rakefile to use ActiveRecord oriented rake tasks, subsituting database/environment information as necessary for your program
  3. Create database migrations for your existing tables.  The file name should match the format shown in the example commits.
  4. Delete your existing databases
  5. Run `rake db:migrate`, which will set up your production database using the migrations.  This will also create db/schema.rb
  6. Run `rake db:test:prepare`, which will bootstrap your test database
  7. Make sure you updated the test section of your Rakefile so that it will run `rake db:test:prepare`
  8. Run `rake`. It should pass. If it does not, figure out why!
  9. Commit this refactor before moving on to the next steps.

Reminder: `rake -T` will show you the list of all available rake tasks
