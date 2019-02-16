class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :offer, foreign_key: true
      t.integer :value
      t.integer :currency
      t.timestamps
    end
  end
end
