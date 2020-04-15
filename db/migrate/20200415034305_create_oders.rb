class CreateOders < ActiveRecord::Migration[5.2]
  def change
    create_table :oders do |t|
      t.integer :member_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.string :pay_type
      t.integer :postage
      t.integer :total_price
      t.integer :order_status

      t.timestamps
    end
  end
end
