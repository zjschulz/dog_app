class Volunteer < ApplicationRecord
    has_many :walks
    has_many :dogs, through: :walks
    validates_presence_of :name

    def time_method
        self.walks.sum do |t|
            t.duration
        end
    end

end
