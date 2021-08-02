class Continent < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
