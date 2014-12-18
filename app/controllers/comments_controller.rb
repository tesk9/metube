class CommentsController < ApplicationController
  def create
    Comments.create(subject: params[:comment][:subject], body: params[:comment][:body], video_id: params[:video_id])
    redirect_to :back
  end

  def destroy
    Comments.delete(params[:id])
    redirect_to :back
  end
end
