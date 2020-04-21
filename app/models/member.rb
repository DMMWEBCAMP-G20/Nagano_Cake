class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :cart_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :deliveries, dependent: :destroy

  enum is_active: { enable: true, disable: false }

  def full_name
    return self.first_name + self.last_name
  end

  def active_for_authentication?
    super && self.is_active == 'enable'
  end

  def Member.search(search, member_or_product)
      if member_or_product == "1"
        Member.where(['first_name LIKE ?', "%#{search}%"])
      else
        Member.all
      end
  end
end
