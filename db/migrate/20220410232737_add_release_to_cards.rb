class AddReleaseToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :release, :text
  end
end
