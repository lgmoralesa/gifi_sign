class AddGroupToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :group_id, :integer
    add_index :members, :group_id
  end
end
  
