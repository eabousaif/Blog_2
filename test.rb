class AddRatingsToTop10VideoGames < ActiveRecord::Migration[5.2]
  def change
    add_column :top10videogames, :ratings, :integer
  end
end

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

class Top10GrossingVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :top10videogames do |t|
      t.string :name
      t.integer :year_released
      t.integer :total_revenu
  end
end

