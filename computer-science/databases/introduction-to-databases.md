# Introduction to Databases


## What is a database?

A database is a data store.  Databases logically organize data into an abstraction of real-world concepts.

Database is often abbreviated to DB.

## What is a DBMS?

A DBMS is a database management system.

Databases and database management systems are different concepts.  The database is the data and the metadata (for example, indexes) about that data.

The database management system is the software used to access and manipulate the data stored in the database.  This is typically referred to as the [CRUD operations](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete#Database_applications) (create, read, update, delete).

### ACID

> In computer science, ACID (Atomicity, Consistency, Isolation, Durability) is a set of properties that guarantee that database transactions are processed reliably. In the context of databases, a single logical operation on the data is called a transaction. For example, a transfer of funds from one bank account to another, even involving multiple changes such as debiting one account and crediting another, is a single transaction. -- Wikipedia: ACID

## What are the types of databases?

In this class, we will be focusing on relational databases.  However, there are many different types of databases that are suited to different specialized purposes.

There is no "perfect" database type.  Different datasets demand different ways of storing and accessing that data.

Many database management systems combine the properties of various types of databases.  For example, PostgreSQL is primarily a relational datbase system, however it can act as document-oriented database, spatial database, and distributed database as needed.

### Relational Databases

Relational databases are databases that are based on the relational model, in which all data is stored in tuples (ordered lists of elements) and relations.

Relational database data is stored in tables with specific schemas (specifications of exactly what kind of data is stored) and relationships (between tables).

Relational databases are particularly strong at storing and querying highly structured data that have rich relationships.

Microsoft SQL Server, MySQL, Oracle and PostgreSQL are among the more famous relational database systems.

#### Object & Object-Relational Databases

Object databases store data in the form of serialized Objects, rather than relational (table-oriented) data.  Object-Relational databases take a hybrid approach.  They are oriented towards storing objects and program state from object-oriented languages.

#### Graph Databases

Graph databases are databases that store data based on graph data structures.  They are particularly suited to storing graph-oriented data, such as computer networks and social network connections.

### Document-oriented Databases

Document-oriented databases are, as oriented towards storing semi-structured document-oriented data.  Most document databases are schema-less and don't validate the format of data that is stored, which makes indexing and cross-referencing data more difficult than in highly structured relational databases.

Document-oriented databases are particularly well-suited to storing information about actual documents and to storing data that is an a key-value format, such as work queues.

Redis and MongoDB are among the more popular document-oriented databases.

#### XML Databases

XML databases store information in an XML format and tend to be document-oriented.

### Spatial Databases

> Spatial databases are databases that are optimized to store and query data that represents objects defined in a geometric space. (Wikipedia: Spatial database)

Spatial databases are particularly strong at storing data related to locations and calculating their proximity to each other.

## How can databases be stored?

### Centralized

This is the closest thing we have to a default storage pattern. Centralized databases are stored and served from a single location/machine.

Many databases systems can start with a centralized storage model and later be expanded to act as a distributed database.

### In-Memory Databases

In-memory databases store all (or most) of their data in-memory (i.e. RAM).  The information stored in an in-memory database is lost when the database is restarted.

These databases are particularly suited to storing temporary work queues and other processing-oriented information.

### Distributed Databases

Distributed databases are stored across multiple machines and locations.  This storage mechanism is used to speed up access and aid in disaster recovery.

Distributed databases increase maintenance and administrative costs, as managing databases and fail-over across many locations typically requires more specialized knowledge.


## Outline of Databases Topics

The general order in which I (Eliza) think cover database-related topics:

  * Intro to Databases
  * ACID
  * Entity-Relation Diagrams
  * Intro to SQL
  * Creating Databases
  * Table definitions
  * Constraints
  * Indexing
  * Transactions
  * Locks
  * Normalization
  * Joins
  * Projects
  * Overview of:
    * Sprocs
    * Views
    * Query Optimization

## Resources

* [Jurnell's Intro to Databases Slide Deck](http://lectures.sophicware.com/database-basics/#1)
* [Wikipedia: Database](http://en.wikipedia.org/wiki/Database)
* [Wikipedia: Graph Databases](http://en.wikipedia.org/wiki/Graph_database)
* [50 Shades of Graph: How Graph Databases Are Transforming Online Dating](http://www.forbes.com/sites/danwoods/2014/02/14/50-shades-of-graph-how-graph-databases-are-transforming-online-dating/)
* [Wikipedia: Graph Theory](http://en.wikipedia.org/wiki/Graph_theory)
* [Wikipedia: Object Databases](http://en.wikipedia.org/wiki/Object_database)
* [Wikipedia: XML Database](http://en.wikipedia.org/wiki/XML_database)
* [Wikipedia: Relational database management system](http://en.wikipedia.org/wiki/Relational_database_management_system)
* [Wikipedia: Relational model](http://en.wikipedia.org/wiki/Relational_model)
* [Wikipedia: Tuple](http://en.wikipedia.org/wiki/Tuple)
* [Wikipedia: Spatial Database](http://en.wikipedia.org/wiki/Spatial_database)
* [Wikipedia: In-memory database](http://en.wikipedia.org/wiki/In-memory_database)
* [Wikipedia: Centralized database](http://en.wikipedia.org/wiki/Centralized_database)
* [Wikipedia: Create, read, update, delete](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete#Database_applications)
* [Wikipedia: Outline of databases](http://en.wikipedia.org/wiki/Outline_of_databases)
* [Wikipedia: ACID](http://en.wikipedia.org/wiki/ACID)
