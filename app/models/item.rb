class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 100_000_000 }
  validates :user_id, presence: true
end
