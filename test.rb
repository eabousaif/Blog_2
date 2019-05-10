class Top10GrossingVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :top10videogames do |t|
      t.string :name
      t.integer :year_released
      t.integer :total_revenu
  end
end

