class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :description, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
