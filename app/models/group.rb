class Group < ApplicationRecord
    has_many :entities
    has_many :users
end
