class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description, limit: 400
      t.integer :beds
      t.integer :guests

      t.timestamps null: false
    end
  end
end
