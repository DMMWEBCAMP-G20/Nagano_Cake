class Genre < ApplicationRecord
	has_many :products, dependent: :destroy
  enum is_active: { enable: true, disable: false }
end
