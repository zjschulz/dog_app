class Dog < ApplicationRecord
    has_many :walks
    has_many :volunteers, through: :walks
end
