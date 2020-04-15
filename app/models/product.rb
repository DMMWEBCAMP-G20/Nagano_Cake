class Product < ApplicationRecord
  belongs_to :genre

  attachment :image

  enum is_sales_status: { sale: true, sold_out: false }
end
