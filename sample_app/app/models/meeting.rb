class Meeting < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: {maximum:255}
    validates :startTime, presence: true
    validates :endTime, presence: true

    validate :valid_meeting_time

def valid_meeting_time 
    if startTime > endTime
      errors.add(:Time, 'Invalid meeting time')
    end
end

end
