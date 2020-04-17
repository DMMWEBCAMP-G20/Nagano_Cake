class RenamePasswordColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :password, :encrypted_password
  end
end
