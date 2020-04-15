class AddReadingFirstNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :reading_first_name, :string
  end
end
