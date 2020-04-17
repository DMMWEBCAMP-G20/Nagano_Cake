class OrderProduct < ApplicationRecord
	belongs_to :order
	belongs_to :product
	enum order_status: [:waiting_payment, :payment_confirmation, :production, :preparing_shipping, :shipped]
	#入金待ち0 #入金確認1 #製作中2 #発送準備中3 #発送済4
	enum production_status: [:cannot_strat, :awaiting_production, :production, :production_completed]
    #着手不可 制作待ち 製作中 制作完了

end
