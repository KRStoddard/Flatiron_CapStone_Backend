class RemoveHometownFromBands < ActiveRecord::Migration[6.0]
  def change
    remove_column :bands, :hometown, :string
  end
end
