class Volunteer < ApplicationRecord
    has_many :walks
    has_many :dogs, through: :walks
    validates_presence_of :name
end
