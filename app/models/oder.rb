class Oder < ApplicationRecord
	has_many :order_products, dependent: :destroy
	has_many :products, througe: :order_products

	enum order_status: [:waiting_payment, :payment_confirmation, :production, :preparing_shipping, :shipped]
	#入金待ち0 #入金確認1 #製作中2 #発送準備中3 #発送済4
end
