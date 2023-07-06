

class Listing < ApplicationRecord
    validates :name, presence: true
    validates :guests, numericality: { only_integer: true }
    validates :beds, numericality: { only_integer: true }
    validates :baths, numericality: true
    validates :price, numericality: { only_integer: true }
end
  