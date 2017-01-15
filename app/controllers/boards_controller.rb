class BoardsController < ApplicationController
<<<<<<< HEAD
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

  def index
  	@board = Board.all
  end

  def show
  	@board = Board.includes(:comments).find(params[:id])
  	@comment = Comment.new
=======
  def new
  end

  def index
  end

  def show
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6
  end

  def edit
  end
<<<<<<< HEAD

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
  	params.require(:board).permit(:title, :editor, :body)
  end

=======
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6
end
