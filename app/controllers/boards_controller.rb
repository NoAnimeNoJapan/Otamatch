class BoardsController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create, :edit, :update]
   before_action :set_board, only: [:edit, :update, :destroy]

  def new
  	@board = Board.new
  end

  def create
  	@board = Board.new(params_board)
  	if @board.save
  		redirect_to board_url(@board)
  	else
  		render :new
  	end
  end

  def index
  	@boards = Board.all
  	@circles = Circle.find(params[:id])
  end

  def show
  	@board = Board.includes(:comments).find(params[:id])
  	@comment = Comment.new
  end

  def edit
  end

  def update
  	if @board.update_attributes(params_board)
  		redirect_to board_url(@board)
  	else
  		render :edit
  	end
  end

  def destroy
  	@board.destroy
  	redirect_to boards_url
  end


  private

  def set_board
  	@board = Board.find(params[:id])
  end

  def params_board
  	params.require(:board).permit(:title, :editor, :body, :circle_id)
  end

end
