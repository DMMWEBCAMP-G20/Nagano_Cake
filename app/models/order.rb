class Order < ApplicationRecord
  belongs_to :member

	has_many :order_products, dependent: :destroy

	enum order_status: [:waiting_payment, :payment_confirmation, :production, :preparing_shipping, :shipped]
  #入金待ち0 #入金確認1 #製作中2 #発送準備中3 #発送済4

  def total_quantity
    a = 0
    self.order_products.each do |order_product|
      a = a + order_product.quantity
    end
    return a
  end
end
