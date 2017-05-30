class CreateMembersResumees < ActiveRecord::Migration[5.1]

  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :pass
      t.string :phone
      t.references :group , null: false

      t.timestamps    end
  end
  def change
    create_table :resumees do |t|
      t.string :name
      t.date :date
      t.string :attachment

      t.timestamps

    end
  end

  def change
    drop_table :members_myfiles
    create_table :members_resumees do |t|
      t.belongs_to :member, index: true
      t.belongs_to :resumee, index: true

    end
  end
end
