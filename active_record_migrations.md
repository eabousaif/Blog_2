# Active Record Migrations

## What Are Migrations?

Migrations are an easy way of altering an existing database schema over a period of time in a consistent and easy way. In other words, it is moving from the current version of a database to a newer version. It uses Ruby DSL (Domain Specific Language), which allows the schema and database to be database independent and relieve us, the developer, from writing our own SQL. The main advantage of migrations is that once we make a change, or a migration, existing data in the table is not lost and changes are very easily reverted. To use ActiveRecord, we first need to install the gem using `gem install activerecord` and then require the gem in our environment:

```ruby
require "active_record"
```

Let's say we want to create a table that shows the top 10 grossing video games, year released, and total revenue. We can create that table in our terminal by typing in `rake db:create_migration NAME=top_10_grossing_video_games`. Now let's take a quick step back and break down our Bash command:
1. **rake**: an efficient way to manage database changes.
2. **db:create_migration**: the command will create a table and save it in the db/migrate/ directory.
3. **NAME=top_10_grossing_video_games**: specifying the name of our file.

Once we run our command, we should have the following code in our *top_10_grossing_video_games* file:

```ruby
class Top10GrossingVideoGames < ActiveRecord::Migration[5.2]
  def change
  end
end
```
This gives us a rough layout of our table class along where it inherits its methods from ActiveRecord and gives us the default method `def change`. Now that we have that layout, we can start by creating our table and adding some columns to it:

```ruby
class Top10GrossingVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :top10videogames do |t|
      t.string :name
      t.integer :year_released
      t.integer :total_revenue
  end
end
```
Here we create a migration called *top10videogames* and we iterate over it to return its name, which would be a string, and its date of release and total revenue, which are both integers.

## Adding Data To Our Migrations.

Now that we have created our migration and defined its columns, we want to input our data. We would include all our data in the db/seed.rb file. According to IGN, this would be the top 10 grossing games in history:

```ruby
Videogame.create(name: "Diablo III", year_released: 2012 ,total_revenue: 30000000, rating: 9.5)
Videogame.create(name: " Wii Sports Resort",year_released: 2009, total_revenue: 33090000, rating: 6.5)
Videogame.create(name: "Mario Kart Wii ", year_released: 2008, total_revenue: 37140000,rating: 8.9)
Videogame.create(name: "Super Mario Bros.", year_released: 1985, total_revenue: 40000000, rating: 9.0)
Videogame.create(name: "Pokemon Red/Blue/Green/Yellow", year_released: 1996, total_revenue: 45000000, rating: 10)
Videogame.create(name: "Playerunknown's Battlegrounds", year_released: 2017, total_revenue: 50000000, rating: 9.5)
Videogame.create(name: "Wii Sports", year_released: 2006, total_revenue: 82860000, rating: 7.5)
Videogame.create(name: "Grand Theft Auto V", year_released: 2013, total_revenue: 100000000, rating: 10)
Videogame.create(name: "Minecraft", year_released: 2009, total_revenue: 154000000, rating: 9.0)
Videogame.create(name: "Tetris", year_released: 1984, total_revenue: 500000000, rating: 9.0)
```
