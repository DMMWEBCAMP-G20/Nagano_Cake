class RemoveBooreanFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :boorean, :string
  end
end
