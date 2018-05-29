class CreateSponsoredPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :title
      t.boolean :public

      t.timestamps
    end
  end
  def change
    create_table :sponsored_posts do |t|
      t.string :title
      t.text :body
      t.integer :price

      t.timestamps
    end
  end
end
