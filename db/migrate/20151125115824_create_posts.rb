class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :status
      t.datetime :published_at
      t.integer :views_count
      t.integer :user_id

      t.timestamps
    end
  end
end
