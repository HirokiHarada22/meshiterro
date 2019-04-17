class AddProfileIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_id, :text
  end
end
