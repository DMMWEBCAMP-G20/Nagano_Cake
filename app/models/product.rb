class Product < ApplicationRecord
  belongs_to :genre

  has_many :cart_items, dependent: :destroy
  has_many :order_products, dependent: :destroy

  attachment :image

  enum is_sales_status: { sale: true, sold_out: false }

  def Product.search(search, member_or_product)
    if member_or_product == "2"
      Product.where(['name LIKE ?', "%#{search}%"])
    else
      Product.all
    end
  end
end
