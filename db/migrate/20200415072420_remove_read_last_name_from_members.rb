class RemoveReadLastNameFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :read_last_name, :string
  end
end
