# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

# Admin.create!(
#   email: 'admin@admin.com',
#   password: 'adminadmin'
# )
# Member.create!(
#   email: 'a@a.com',
#   password: 'adminn',
#   reading_first_name: 'ad'
# )

Order.create(created_at: '2017-07-19', member_id: 1, postal_code: '000-0000', address: '住所', name: '宛名', pay_type: '支払い', postage: '送料', total_price: '1')

# OrderProduct.create(order_id: 1, product_id: 1, quantity: '2')