class Group < ApplicationRecord
  belongs_to :user
  has_many :item

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true
end
