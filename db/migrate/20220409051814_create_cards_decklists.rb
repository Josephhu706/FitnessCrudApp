class CreateCardsDecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_decklists, :id => false do |t|
      t.integer :card_id
      t.integer :decklist_id
    end
  end
end
