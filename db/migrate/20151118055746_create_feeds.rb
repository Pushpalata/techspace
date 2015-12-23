class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.integer :user_id
      t.string :feedable_type
      t.integer :feedable_id
      t.string :message
      t.text :description
      t.string :action_trigger

      t.timestamps
    end
  end
end
