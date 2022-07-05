class User < ApplicationRecord
  has_many :group
  has_many :item
end
