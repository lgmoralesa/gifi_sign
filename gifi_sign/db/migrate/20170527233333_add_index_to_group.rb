class AddIndexToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :member_id, :integer
    add_index :groups, :member_id
  end
end
