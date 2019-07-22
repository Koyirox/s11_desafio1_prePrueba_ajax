class CommentsController < ApplicationController
  def index
    if params[:q]
      @comments = Comment.where('content like ?', "%#{params[:q]}%")
    else
      @comments = Comment.all
    end

  end

  def create

    @comment = Comment.create(comments_params)
    # render json: @comment.as_json
  end

  private

  def comments_params
    params.require(:comment).permit(:content)
                  #el recurso      #el parametro
  end
end 
