class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.references :block, foreign_key: true
      t.string :offer_type
      t.timestamps
    end
  end
end
