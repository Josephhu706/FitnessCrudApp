class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :post_text
      t.text :image
      t.text :video

      t.timestamps
    end
  end
end
