class VideosController < ApplicationController
  def index
    @videos = Videos.all
    @lists = List.all
  end

  def create
    Videos.create(title: params[:video][:title], url: params[:video][:url], desc: params[:video][:desc])
    redirect_to :back
  end

  def edit
    @vid = Videos.find(params[:id])
  end

  def update
    Videos.update(params[:id], title: params[:video][:title], url: params[:video][:url], desc: params[:video][:desc])
    redirect_to video_url(:id => "#{params[:id]}")
  end

  def destroy
    Comments.delete_all(location_id: params[:id], comment_on: "video")
    Videos.delete(params[:id])
    redirect_to('/')
  end

  def show
    @vid = Videos.find(params[:id])
    @comments = Comments.where(comment_on: "video", location_id: params[:id]);
  end
end
