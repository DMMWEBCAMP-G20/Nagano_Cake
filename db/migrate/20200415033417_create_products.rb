class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :name
      t.text :explanatory
      t.integer :price
      t.boolean :is_sales_status
      t.string :image_id

      t.timestamps
    end
  end
end
