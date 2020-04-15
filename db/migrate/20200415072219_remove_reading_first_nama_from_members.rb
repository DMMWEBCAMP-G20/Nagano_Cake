class RemoveReadingFirstNamaFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :reading_first_nama, :string
  end
end
