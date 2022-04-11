class RemoveSetFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :set, :text
  end
end
