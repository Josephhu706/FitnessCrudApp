class RemoveCardinfoFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :cardinfo, :text
  end
end
