class RenameClassToType < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :class, :type
  end
end
