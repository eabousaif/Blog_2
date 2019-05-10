# Active Record Migrations

## What are Migrations?

Migrations are an easy way of altering an existing database schema over a period of time in a consistent and easy way. In other words, it is moving from the current version of a database to a newer version. It uses Ruby DSL (Domain Specific Language), which allows the schema and database to be database independent and relieve us, the developer, from writing our own SQL. The main advantage of migrations is that once we make a change, or a migration, existing data in the table is not lost and changes are very easily reverted. To use ActiveRecord, we first need to install the gem using `gem install activerecord` and then require the gem in our environment:
