class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    before_action :correct_user, only: [:edit, :update]

	def new
      @event = Event.new		
	end

	def create
      @event = Event.new(event_params)

      @event.user_id = current_user.id

      @event.save
      redirect_to events_path
	end

	def edit

  end		

  def show
    @event = Event.find(params[:id])
  end   
	
	def index
    # @events = Event.all
    @search = Event.search(params[:q])
    @events = @search.result(distinct:true)
    @events = Event.page(params[:page]).per(10).order(:id)
	end

	def update
    @event.update(params[:id])
      redirect_to @event
	end

	def destroy
    @event.destroy
       # respond_to do |format|
    redirect_to events_url
        # notice: 'Event was successfully destroyed.' }
        # format.json { hend :no_content } 
	    # end
  end

  def favorites
    @event = Event.find(params[:id])
  end  



private
   def set_event
     @event = Event.find(params[:id])
   end

   def correct_user
      event = Event.find(params[:id])
      if current_user.id != event.user.id
       redirect_to root_path
      end
    end
  
   def event_params  
     params.require(:event).permit(:title, :body, :image, :user_id) 
   end



end
