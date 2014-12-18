class CommentsController < ApplicationController
  def index
    @reply_to = Comments.find(params[:comment][:location_id])
    responses = Comments.where(location_id: params[:comment][:location_id])
    @vid_id = params[:video_id]
    @all_responses = []
    subcomments(responses)
  end

  def subcomments(responses)
    responses.each do |r|
      @all_responses.push(r)
      res = Comments.where(location_id: r.id)
      if res.length > 0
        @nest = subcomments(res)
      end
    end
  end

  def create
    Comments.create(subject: params[:comment][:subject], body: params[:comment][:body], location_id: params[:comment][:location_id], comment_on: params[:comment][:comment_on])
    redirect_to :back
  end

  def destroy
    Comments.delete(params[:id])
    redirect_to :back
  end
end
