class EventController < ApplicationController

	def new
      @event = Event.new		
	end

	def create
      @event = Event.new(event_params)

      @event.user_id = current_user.id

      @event.save
      redirect_to @event
	end

	def edit

  end		

	def show
    @event = Event.find(params[:id])
	end
	
	def index
    @events = Event.all
	end

	def update
      @event.update(parmas[:id])
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

private
   def set_event
     @event = Event.find(params[:id])
   end
  
   def event_params  
     params.require(:event).permit(:title, :body, :image, :user_id) 
   end


end  
