class RenameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :type, :b_class
  end
end
