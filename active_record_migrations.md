# Active Record Migrations

## What are Migrations?

Migrations are an easy way of altering an existing database schema over a period of time in a consistent and easy way. In other words, it is moving from the current version of a database to a newer version. It uses Ruby DSL (Domain Specific Language), which allows the schema and database to be database independent and relieve us, the developer, from writing our own SQL. The main advantage of migrations is that once we make a change, or a migration, existing data in the table is not lost and changes are very easily reverted. To use ActiveRecord, we first need to install the gem using `gem install activerecord` and then require the gem in our environment:

```ruby
require "active_record"
```

Let's say we want to create a table that shows the top 10 grossing video games, year released, and total revenue. We can create that table in our terminal by typing in `rake db:create_table NAME=top_10_grossing_video_games`. Now let's take a quick step back and break down our Bash command:
1. **rake**: an efficient way to manage database changes.
2. **db:create_table**: the command will create a table and save it in the db/migrate/ directory.
3. **NAME=top_10_grossing_video_games**: specifying the name of our file.

Once
