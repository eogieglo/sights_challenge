class Country < ApplicationRecord
  belongs_to :continent

  validates :name, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
