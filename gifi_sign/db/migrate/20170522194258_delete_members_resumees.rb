class DeleteMembersResumees < ActiveRecord::Migration[5.1]
  def change
    drop_table :members_resumees
    create_table :members_resumees do |t|
      t.belongs_to :member, index: true
      t.belongs_to :resumee, index: true

    end
  end
end
