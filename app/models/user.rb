class User < ApplicationRecord
  has_many :likes
  has_many :tweets, through: :likes
end
