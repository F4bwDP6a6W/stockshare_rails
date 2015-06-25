class CommentsController < ApplicationController
  def create
    @stock = Stock.find(params[:stock_id])
    @comment = @stock.comments.create(comment_params)
    redirect_to stock_path(@stock)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
