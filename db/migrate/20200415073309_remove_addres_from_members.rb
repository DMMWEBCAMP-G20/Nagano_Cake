class RemoveAddresFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :addres, :string
  end
end
