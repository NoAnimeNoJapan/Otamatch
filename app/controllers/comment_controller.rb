class CommentController < ApplicationController

<<<<<<< HEAD
  def new
    @comment = Comment.new
  end
=======
    def new
      @comment = Comment.new
	end
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6

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
<<<<<<< HEAD
      end
  end

	def edit
  end
=======
=======
      @comment.save
      redirect_to @comment    
>>>>>>> 572db9716e658c397e236d3b1022d7fa68903729
	end

	def edit

    end
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6

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
<<<<<<< HEAD
          format.json { render json: @comment.errors, status: :unprodessable_entity }		 
	    end
    end
  end
=======
          format.json { render json: @comment.errors, status: :unprodessable_entity }
	    end
=======
	def update 
	    @comment.update(params[:id])
        redirect_to @comment 
>>>>>>> 572db9716e658c397e236d3b1022d7fa68903729
	end
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6

	def destroy
      @comment.destroy
       # respond_to do |format|
        redirect_to comments_url
        # notice: 'Comment was successfully destroyed.' }
<<<<<<< HEAD
        # format.json { hend :no_content }  
	end

=======
        # format.json { hend :no_content }
	end
>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6



  private

  def set_comment
  	@comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :subject, :circle_id, :event_id)
  end
<<<<<<< HEAD

end
=======
end

>>>>>>> 7e8bf882d7505322fe1f9ed120b2e3b5f8cea0f6
