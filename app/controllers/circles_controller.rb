class CirclesController < ApplicationController
	before_action :set_circle, only: [:show, :edit, :update, :destroy]
  	before_action :authenticate_user!
  	before_action :correct_user, only: [:edit, :update]

	def new
		@circle = Circle.new
	end

	def create
		@circle = Circle.new(circle_params)

		@circle.save
    redirect_to '/circles'
 
	end

	def index
    @search = Circle.search(params[:q])
    @circles = @search.result(distinct:true)#search(params[:q]).page(params[:page]).per(10)
	end

  def show
    @circle = Circle.find(params[:id])
  end

	def edit
		
	end

	def update
		respond_to do |format|
      if @circle.update(circle_params)
        format.html { redirect_to @circle, notice: 'Circle was successfully updated.' }
        format.json { render :show, status: :ok, location: @circle }
      else
        format.html { render :edit }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
		@circle.destroy
      	respond_to do |format|
      	format.html { redirect_to circles_url, notice: 'Circle was successfully destroyed.' }
      	format.json { head :no_content }
    end
	end

	def circle_params
      params.require(:circle).permit(:title, :body, :user_id, :image, )
    end

    def correct_user
      circle = Circle.find(params[:id])
      if current_user.id != circle.user.id
       redirect_to root_path
      end
    end
end
