class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
  #before_action :correct_user, only: [:edit, :update]
 

  def index
  	@user = User.all
  end

  def show
  	@user = User.find_by_id(params[:id])
  end

  def circle_joins
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    @user.name = params[:name]
    @user.name = params[:gender]
    @user.name = params[:age]
    @user.name = params[:introduction]
    @user.name = params[:image]
    @post.save
    link_to user_path(@user.id)
  end

end  
