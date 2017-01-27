class EventsController < ApplicationController
     

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
    redirect_to events_url
     
  end





private
   def set_event
     @event = Event.find(params[:id])
   end

   def event_params  
     params.require(:event).permit(:title, :body, :image, :user_id) 
   end



end
