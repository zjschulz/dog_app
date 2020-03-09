module VolunteersHelper

    def time_conversion(minutes)
        hrs = 0
        min = 0
        if minutes >= 60
          min = minutes % 60
          hrs = (minutes - min) / 60
          min = format('%02d',min)
        else
          min = minutes
        end
        return "#{hrs} hours:#{min} minutes"
    end

end
