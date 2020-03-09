class Volunteer < ApplicationRecord
    has_many :walks
    has_many :dogs, through: :walks
    validates_presence_of :name

    def time
        self.walks.sum do |t|
            t.duration
        end
    end

end
