class CommentsController < ApplicationController
	before_action :load_commentable

  def new
  	@comment = @commentable.comments.new

  end
  def create
  	@comment = @commentable.comments.new(comment_params)
  	if @comment.save
  		redirect_to @commentable
  	else
  		render 'new'
  	end
  end

  def index
  	@comments = @commentable.comments

  end

  private
  
  def comment_params
  	params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end

 
end
