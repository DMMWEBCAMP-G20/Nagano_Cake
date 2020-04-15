class RemoveIsAcctiveFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :is_acctive, :string
  end
end
