class Group < ApplicationRecord
  belongs_to :user
  has_many :item, dependent: :delete_all

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true

  def recent_transactions
    items.order(created_at: :desc).limit(5)
  end
end
