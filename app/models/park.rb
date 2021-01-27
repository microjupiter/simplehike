class Park < ApplicationRecord
  has_many :trails
  has_many :reviews, through: :trails
  has_many :hikers, through: :reviews
end
