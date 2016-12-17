class CircleJoinsController < ApplicationController
	before_action :authenticate_user!

	def create
        @circle = Circle.find(params[:circle_id])
        @circle_join = current_user.circle_join.build(circle: @circle)

        if @circle_join.save
          redirect_to circles_url, notice: "参加する"
        else
          redirect_to circles_url, alert: "参加できません"
        end
    end

    def destroy
        @circle_join = current_user.circle_joins.find_by!(circle_id: params[:circle_id])
        @circle_join.destroy
        redirect_to circles_url, notice: "退出する"
    end
end
