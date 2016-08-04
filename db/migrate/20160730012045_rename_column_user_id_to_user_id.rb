class RenameColumnUserIdToUserId < ActiveRecord::Migration
  def change
  	rename_index :profiles, :user_id, :oldUser_id
  	#rename_column :profiles, :User_id, :user_id
  	#rename_index :profiles, :User_id, :user_id
  	rename_index :todo_lists, :user_id, :oldUser_id
  	#rename_column :todo_lists, :User_id, :user_id
  	#rename_index :todo_lists, :User_id, :user_id
  end
end
