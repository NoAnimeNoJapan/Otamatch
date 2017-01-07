class CommentController < ApplicationController

    def new
      @comment = Comment.new
	end

	def create
      @comment = Comment.new(comment_params)
      
      @comment.user_id = current_user.id

<<<<<<< HEAD
      respond_to do |format|
      	if @comment.save
      	  format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
      	  format.json { render :show, status: :created, location: @comment }
      	else
      	  format.html { render :new}
      	  format.json { render json: @comment.errors, status: :unprodessable_entity}
        end
=======
      @comment.save
      redirect_to @comment    
>>>>>>> 572db9716e658c397e236d3b1022d7fa68903729
	end

	def edit

    end

	def show

	end

	def index
      @comments = Comment.all
	end

<<<<<<< HEAD
	def update
	  respond_to do |format|
	    if @comment.update(comment_params)
          format.html { redirect_to @comment, notice: 'comment was successfully updated' }
          format.json { render :show, status: :ok, location: @comment }
        else
          format.html { render :edit }
          format.json { render json: @comment.errors, status: :unprodessable_entity }
	    end
=======
	def update 
	    @comment.update(params[:id])
        redirect_to @comment 
>>>>>>> 572db9716e658c397e236d3b1022d7fa68903729
	end

	def destroy
      @comment.destroy
       # respond_to do |format|
        redirect_to comments_url
        # notice: 'Comment was successfully destroyed.' }
        # format.json { hend :no_content }
	end

end


private
  def set_comment
  	@comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :subject, :circle_id, :event_id)
  end
end

