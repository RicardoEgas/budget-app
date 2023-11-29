class Group < ApplicationRecord
  has_many :purchases
  has_many :users
end
