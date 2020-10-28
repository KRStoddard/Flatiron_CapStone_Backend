class AddUsernameToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :username, :string
  end
end
