class OrderProduct < ApplicationRecord
	belongs_to :order
	belongs_to :product

	enum production_status: [:cannot_strat, :waiting_production, :production, :production_completed]
    #着手不可 制作待ち 製作中 制作完了

end
