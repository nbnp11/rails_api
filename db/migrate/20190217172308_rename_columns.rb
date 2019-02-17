class RenameColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :prices, :value, :pricevalue
    rename_column :offers, :offer_type, :offertype
  end
end
