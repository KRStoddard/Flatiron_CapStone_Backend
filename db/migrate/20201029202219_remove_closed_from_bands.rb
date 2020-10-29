class RemoveClosedFromBands < ActiveRecord::Migration[6.0]
  def change
    remove_column :bands, :closed, :boolean
  end
end
