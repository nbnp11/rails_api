class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :class
      t.string :street
      t.string :house_number
      t.integer :floors
      t.timestamps
    end
  end
end
