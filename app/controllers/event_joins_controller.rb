class EventJoinsController < ApplicationController
   before_action :authenticate_user!

	def create
		@event = Event.find(params[:event_id])
        # @event_join = current_user.event_joins.new(event_id: @event)
        @event_join = EventJoin.new
        @event_join.user_id = current_user.id 
        @event_join.event_id = @event.id

        if @event_join.save
          redirect_to events_url, notice: "参加したんだって？楽しくやれよ！"
        else
          redirect_to events_url, alert: "参加できない？それはログインしてないからさ！"
        end


	end
	
	def destroy
		@event = Event.find(params[:event_id])
		@event_join = current_user.event_joins.find_by!(event_id: params[:event_id])
        @event_join.destroy
        redirect_to events_url, notice: "参加...解除したぜ.."
			
	end	

end
