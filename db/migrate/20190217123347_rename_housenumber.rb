class RenameHousenumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :house_number, :housenumber
  end
end
