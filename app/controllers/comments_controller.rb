class CommentsController < ApplicationController
  http_basic_authenticate_with name: "n2zhang", password: "Nokia127", only: :destroy

  def create
    @stock = Stock.find(params[:stock_id])
    @comment = @stock.comments.create(comment_params)
    redirect_to stock_path(@stock)
  end

  def destroy
    @stock = Stock.find(params[:stock_id])
    @comment = @stock.comments.find(params[:id])
    @comment.destroy
    redirect_to stock_path(@stock)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
