class Dog < ApplicationRecord
    has_many :walks
    has_many :volunteers, through: :walks
    scope :longest_in_spca, { order('time_in').first }
    scope :rottweiler, { where(breed: 'Rottweiler') }
    scope :female, { where(gender: 'Female') }

end
