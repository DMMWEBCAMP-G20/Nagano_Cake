class AddReadingLastNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :reading_last_name, :string
  end
end
