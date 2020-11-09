class AddPaidToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :paid, :boolean
  end
end
