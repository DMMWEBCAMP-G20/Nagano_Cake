class Product < ApplicationRecord
  belongs_to :genre

  has_many :cart_items, dependent: :destroy
  has_many :order_products, dependent: :destroy
  attachment :image

  enum is_sales_status: { sale: true, sold_out: false }
end
