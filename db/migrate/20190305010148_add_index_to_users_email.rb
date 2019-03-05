class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
  	#add index to email, and enforce uniqueness from situation due to a double-click by user at signup
  	add_index :users, :email, unique: true 
  end
end
