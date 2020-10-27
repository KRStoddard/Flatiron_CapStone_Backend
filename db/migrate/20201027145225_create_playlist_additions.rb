class CreatePlaylistAdditions < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_additions do |t|
      t.references :playlist, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.boolean :played

      t.timestamps
    end
  end
end
