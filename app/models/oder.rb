class Oder < ApplicationRecord
	has_many :order_products, dependent: :destroy
	has_many :products, througe: :order_products
end
