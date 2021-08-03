class Country < ApplicationRecord
  belongs_to :continent
  has_many :locations
  has_many :sights, through: :locations

  validates :name, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
