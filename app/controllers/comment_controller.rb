class CommentController < ApplicationController
   
    def new
      @comment = Comment.new		
	end

	def create
      @comment = Comment.new(comment_params)
      
      @comment.user_id = current_user.id

      @comment.save
      redirect_to @comment    
	end

	def edit

    end		

	def show

	end
	
	def index
      @comments = Comment.all
	end

	def update 
	    @comment.update(params[:id])
        redirect_to @comment 
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
    params.require(:comment).permit(:body, :subject :circle_id :event_id)
  end
end    	
  
