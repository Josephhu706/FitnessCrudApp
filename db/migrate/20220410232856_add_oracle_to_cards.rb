class AddOracleToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :oracle, :text
  end
end
