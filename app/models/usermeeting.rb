class Usermeeting < ApplicationRecord
   before_save :change_url
  def change_url
    if self.meeting_type == "video"
      self.url="meet.com/#{rand.to_s[2...9].to_i }" 
   end
  end  
   validates :meeting_type, presence: true
    validates :meeting_title, presence: true
    validates :dateandtime, presence: true
end
