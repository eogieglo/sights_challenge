class Sight < ApplicationRecord
    has_many :locations
    has_many :countries, through: :locations

    validates :name, uniqueness: true
    validates :name, :creation_date, :height, presence: true
end
