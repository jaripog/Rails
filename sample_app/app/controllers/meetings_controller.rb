class MeetingsController < ApplicationController
      def new
      @meeting = Meeting.new 
  
    end
  
    def index
        @meetings = Meeting.all
    end
  
    def show
      @meeting = Meeting.find(params[:id])
    end
  
    def create
      @meeting = Meeting.new(meeting_params)
      if @meeting.save
        log_in @meeting
        flash[:success] = "New meeting has been created!"
        redirect_to @meeting
      else
        render 'new'
      end
    end
  
    def edit 
      @meeting = Meeting.find(params[:id])
    end
  
    def update 
      @meeting = Meeting.find(params[:id])
      if @meeting.update_attributes(meeting_params)
        flash[:success] = "Meeting updated"
        redirect_to meetings_path
      else  
        render 'edit'
      end
    end 
  
    def destroy
      Meeting.find(params[:id]).destroy
      flash[:success] = "Meeting deleted successfully...!"
      redirect_to meetings_path
    end
  
    private
  
    def meeting_params
      params.require(:meeting).permit(:title, :description, :startTime, :endTime, :isActive)
    end

    def current_user_loggedin
        if(session[:user_id])
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end
  
  end
  