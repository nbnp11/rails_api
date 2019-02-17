class RenameBclass < ActiveRecord::Migration[5.2]
  def change
    rename_column :buildings, :bClass, :bclass
  end
end
