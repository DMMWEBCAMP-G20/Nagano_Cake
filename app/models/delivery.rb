class Delivery < ApplicationRecord
  belongs_to :member
  attr_accessor :full_address

  def full_address
    self.full_address = self.postal_code + self.address + self.name
  end
end
