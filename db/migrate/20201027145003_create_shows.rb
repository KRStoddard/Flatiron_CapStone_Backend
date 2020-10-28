class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.date :date
      t.references :band, null: false, foreign_key: true
      t.string :venue_name
      t.integer :playlist_id
      t.integer :price_per_request

      t.timestamps
    end
  end
end
