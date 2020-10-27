class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :email
      t.string :hometown
      t.string :password_digest

      t.timestamps
    end
  end
end
