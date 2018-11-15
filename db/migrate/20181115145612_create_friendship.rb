class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friendship do |t|
      t.integer :user_id
      t.integer :user_id_1
      t.timestamps
    end
  end
end
