class Usermeeting < ApplicationRecord
   before_save :change_url

  def change_url
    if self.meeting_type == "video"
      self.url="meet.com/#{rand(0..9)}"
   end
  end  
end
