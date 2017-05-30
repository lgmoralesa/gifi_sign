class CreateResumees < ActiveRecord::Migration[5.1]
  def change
    create_table :resumees do |t|
      t.string :name
      t.date :date
      t.string :attachment

      t.timestamps
    end
  end
end
