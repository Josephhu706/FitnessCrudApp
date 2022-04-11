class CreateDecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :decklists do |t|
      t.text :name
      t.integer :user_id
      t.text :cover
      t.timestamps
    end
  end
end
