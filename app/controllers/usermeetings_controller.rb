class UsermeetingsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show, :home_page]
	def index
		@usermeetings=Usermeeting.all
	end
	def new
		@users=User.all
		@user=User.find(current_user.id)
		@usermeeting=Usermeeting.new(user_id: @user.id )
	end
	def show
		@users=User.all
		@user=User.find(current_user.id)
		@usermeeting=Usermeeting.where(user_id: @user.id)
	end
	def create
		@usermeeting =Usermeeting.create(usermeeting_params)
		if @usermeeting.valid?
    	  @usermeeting.save
    	  redirect_to usermeetings_path
     else
      render :new	  
	end
	end
	 def usermeeting_params
      params.require(:usermeeting).permit(:meeting_title, :meeting_type, :participants, :dateandtime, :user_id)
    end


end
