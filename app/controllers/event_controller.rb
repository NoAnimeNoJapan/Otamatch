class EventController < ApplicationController

	def new
      @event = Event.new		
	end

	def create
      @event = Event.new(event_params)

      respond_to do |format|
      	if @event.save
      	  format.html { redirect_to @event, notice: 'Event was successfully created.' }
      	  format.json { render :show, status: :created, location: @event }
      	else
      	  format.html { render :new}
      	  format.json { render json: @event.errors, status: :unprodessable_entity}	
        end

	end

	def edit

  end		

	def show

	end
	
	def index
      @events = Event.all
	end

	def update

	end

	def destroy
      @event.destroy
       # respond_to do |format|
        redirect_to events_url
        # notice: 'Event was successfully destroyed.' }
        # format.json { hend :no_content } 
	    # end
  end
end

private
  def set_event
    @event = Event.find(params[:id])
  end
  
  def event_params  
    params.require(:event).permit(:eventtitle, :body, :date, :place :event_id)
  end
end    

















   

