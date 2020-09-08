class Usermeeting < ApplicationRecord
   before_save :change_url

  def change_url
    if self.meeting_type == "video"
      self.url="www.johnseena.com"
   end
  end  
end
