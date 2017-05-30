class Droptable < ActiveRecord::Migration[5.1]
  def change
    drop_table :uploads
    drop_table :files_ups
    drop_table :members_uploads
    drop_table :members_files_ups
    drop_table :myfile

  end
end
