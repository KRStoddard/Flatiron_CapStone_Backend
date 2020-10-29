class AddClosedToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :closed, :boolean
  end
end
