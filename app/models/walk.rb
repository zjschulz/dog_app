class Walk < ApplicationRecord
    belongs_to :volunteer
    belongs_to :dog
    validates_presence_of :duration, :date
end
