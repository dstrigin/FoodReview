class Place < ApplicationRecord
  belongs_to :category
  belongs_to :type
end
