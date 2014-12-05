# Database Indexes
Database indexes are used to speed up the retrieval of data for queries based on certain database columns. While they can drastically improve the speed of searches on large tables, they
have two main drawbacks: first, that they increase database write times, since more information is being created when a row is added or changed; and second, that they increase the disk space
that the database takes up (again, because of this extra information).

## How do they work?
There are many index architectures, and computer scientists are still trying to develop more efficient methods of indexing. At their heart, though, indexes work by copying subsets of data from a
table, sorting them, and linking them back to the complete table. For example, let's say that you had a table of singers that included each singer's name, birth date, genre, associated bands, and other
useful info. Now imagine that your app displayed singers by genre (blues, rock, soul, metal, opera, showtunes, etc. etc. etc.), so it searched the table by genre pretty often.

If you wanted to find all the metal singers in the table, your search would have to trawl through the entire table to make sure it caught every metal singer. As it did this, it would
have to pull out the entire row's worth of info about every single singer, even though it only cared about each singer's genre. Creating an index of the genre column would make a new data structure
(the index) that was made up of only a sorted set of genres, each of which was linked back to the full row it came from. Note also that the index would be sorted, as opposed to the table, which might be random (for example, if you'd been entering singers
into your database as you thought of them, or alphabetically by last name, or anything other than by genre.) Thus a search of the index would search only one piece of information (the genre), which
is sorted, rather than searching an unsorted table with tons of extra info in it. For this reason, the search on the index will take only a fraction of the time
of a full table search, since it first pulls the entries that match our desired genre, and only then accesses the rows of those particular singers in the full table.

## That's cool, but how do I create them in Active Record?
Just like the tables they serve, indexes are created via Active Record migrations. If you're writing out the migration manually, include an index line when you create a column that you'd like indexed:

    add_column :singers, :genre, :string  
    add_index :singers, :genre

This migration would add a genre column to the singers table, then index that column. Of course, if you already had a genre column in your table, the migration would only include the second line above.

Rails magic makes doing this migration even easier:

    rails g migration AddGenreToSingers genre:string:index

This will generate a migration identical to the above, but it's quicker, because magic.

So what if you already have a genre column, but after reading this article you've realized you're a fool for not creating it with an index? Fear not! You can add an index after the fact. First, use Rails to generate an empty migration:

    rails g migration AddIndexToGenre

Then open the file this created, which will be called something like 20140603120001_add_index_to_genre.rb and contain code that looks like:

    class AddIndexToGenre < ActiveRecord::Migration  
      def change  
      end  
    end

Get rid of the middle two lines and add these instead:

    def up  
      add_index :singers, :genre  
    end
    
    def down  
      remove_index :singers, column: :genre  
    end

This will define both the migration and rollback for your new index.

## Further Reading
* https://tomafro.net/2009/08/using-indexes-in-rails-index-your-associations
* http://guides.rubyonrails.org/migrations.html
* http://apidock.com/rails/v4.0.2/ActiveRecord/ConnectionAdapters/SchemaStatements/add_index

## Sources

* http://en.wikipedia.org/wiki/Database_index
* http://stackoverflow.com/questions/1108/how-does-database-indexing-work
* http://apidock.com/rails/ActiveRecord/ConnectionAdapters/SchemaStatements/remove_index
