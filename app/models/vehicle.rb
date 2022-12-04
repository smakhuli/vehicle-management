class Vehicle < ApplicationRecord
  validates :vin, presence: true
  validates :year, presence: true
  validates :make, presence: true
  validates :model, presence: true
end
