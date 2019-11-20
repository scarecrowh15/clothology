class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @comment.brand_id = params[:brand_id]
    @comment.brand_drop_id = params[:brand_drop_id]
    @comment.save
    
    if params[:brand_id].present?
      redirect_to brand_path(params[:brand_id])
    else
      redirect_to brand_drop_path(params[:brand_drop_id])
  end

  private
      
  def comment_params
    params.require(:comment).permit(:name, :content, :brand_id)
  end
end
