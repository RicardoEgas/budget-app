class Group < ApplicationRecord
  has_many :purchases
  has_many :users

  validates :name, :icon, presence: true
end
