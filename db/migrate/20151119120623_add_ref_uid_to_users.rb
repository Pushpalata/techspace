class AddRefUidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ref_uid, :string
  end
end
