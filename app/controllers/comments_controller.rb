class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @comment.brand_id = params[:brand_id]
    
    @comment.save
    
    redirect_to brand_path(params[:brand_id])
  end

  private
      
  def comment_params
    params.require(:comment).permit(:name, :content, :brand_id)
  end
end
