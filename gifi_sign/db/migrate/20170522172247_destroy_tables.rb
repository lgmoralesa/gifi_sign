class DestroyTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :pdffiles
    drop_table :members_pdffiles
    def change
      create_table :members do |t|
        t.string :name
        t.string :description

        t.timestamps
      end
    end
    def change
      create_table :lines do |t|
        t.string :name
        t.string :description

        t.timestamps
      end
    end

    def change
      create_table :groups_lines do |t|
        t.belongs_to :group, index: true
        t.belongs_to :line, index: true

      end
    end


  end
end
