# Refactoring to ActiveRecord: Step 2

Thursday, we worked through refactoring the rest of the application into ActiveRecord.

Our starting point was: https://github.com/elizabrock/nss-capstone-2-example/tree/aaccc82aaed714bf8396b2d3f4214433dc972731

Order of operations:

1. Refactor all database access out of the tests.
  1. We started by searching in the test directory for all manual database statements.
      * We refactored all of the `select count(*) from table_name` statements into a new `count` method on our model classes.
      * See: https://github.com/elizabrock/nss-capstone-2-example/commit/cf3e015c3cf8645d7340212a29abdd8e5f11a000
      * And: https://github.com/elizabrock/nss-capstone-2-example/commit/23adb20361c21dfd5fc25680cccf047655a97d8c
  2. We then cleaned up the last of the database access from the tests.
      * See: https://github.com/elizabrock/nss-capstone-2-example/commit/3fca8297d56da5a327672bed0af1f0d415867057
      * In doing so, we found, tested, and fixed a bug.
      * See: https://github.com/elizabrock/nss-capstone-2-example/commit/2f780e4075c1bf0c597e4f2da0aff6eed8936122
2. We then started refactoring all of the model classes into ActiveRecord.
  1. The Category Model
    1. First, we removed the Category class.
    2. And then we ran the unit tests just for the Category class (`ruby test/test_categories.rb`), which we expected to fail
    3. We then let the failing Category unit tests drive us to implement the Category class in ActiveRecord.
        * See: https://github.com/elizabrock/nss-capstone-2-example/commit/f66f450462032fc0dcc91bb6308d6bf141c65819
  2. The Purchase Model
    1. Next, we started following the same steps from the Category class to refactor the Purchase class.
    2. We almost immediately saw the Category.default was missing, as we'd failed to unit test it.  So, we had to reimplement that.
        * See: https://github.com/elizabrock/nss-capstone-2-example/commit/212d074f518cf752e24489dbffeaf2148fa97be6
    3. Then, we completed the Purchase refactor.
        * See: https://github.com/elizabrock/nss-capstone-2-example/commit/6b2812064e8b4246ed280c46cb55270675680944
    4. I have also added a slight refactor we didn't do in class, to take advantage of named scopes.
        * See: https://github.com/elizabrock/nss-capstone-2-example/commit/71af708898788bc674718abdf0436846f16d7d5e
  3. The Integration tests
    1. Finally, knowing that the two model classes were now working (to the best of our knowledge), we ran `rake`, hoping that it would pass.
    2. We then focused on one failing integration test at a time and implemented the necesary code to fix it.
        * See: https://github.com/elizabrock/nss-capstone-2-example/commit/519db1d23709ae3e9990f0a79295877127f57f33
3. Profit!
  1. At this point, `rake` should pass.
  2. Commit everything and push it up!

For the final code, see the `refactor_step_by_step` branch: https://github.com/elizabrock/nss-capstone-2-example/compare/refactor_step_by_step
