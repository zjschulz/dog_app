class Dog < ApplicationRecord
    has_many :walks
    has_many :volunteers, through: :walks
    scope :longestinspca, -> { order('time_in') }
    scope :rottweiler, -> { where(breed: 'Rottweiler') }
    scope :female, -> { where(gender: 'Female') }

end
