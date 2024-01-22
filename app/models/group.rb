class Group < ApplicationRecord
  belongs_to :user
  has_many :purchases

  validates :name, :icon, :user, presence: true
end
