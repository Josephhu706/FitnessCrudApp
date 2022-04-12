class AddDescriptionToDecklists < ActiveRecord::Migration[5.2]
  def change
    add_column :decklists, :description, :text
  end
end
