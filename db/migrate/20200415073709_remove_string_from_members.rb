class RemoveStringFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :string, :string
  end
end
