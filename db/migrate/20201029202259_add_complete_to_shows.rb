class AddCompleteToShows < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :complete, :boolean
  end
end
