class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.references :building, foreign_key: true
      t.integer :area
      t.integer :floor
      t.timestamps
    end
  end
end
