class Genre < ApplicationRecord
  enum is_active: { enable: true, disable: false }
end
