class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text :title
      t.text :image
      t.float :price
      t.text :set
      t.text :cardinfo

      t.timestamps
    end
  end
end
