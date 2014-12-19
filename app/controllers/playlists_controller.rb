class PlaylistsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    if !(Playlist.where(list_id: params[:playlist][:list_id], video_id: params[:playlist][:video_id]).length > 0)
      Playlist.create(list_id: params[:playlist][:list_id], video_id: params[:playlist][:video_id])
    end
    redirect_to playlist_url(:id => "#{params[:playlist][:list_id]}")
  end

  def show
    vid_list = Playlist.where(list_id: params[:id])
    @vid_array = []
    vid_list.each do |v|
      @vid_array.push(Videos.find(v.video_id))
    end
    @list_id = params[:id]
    @comments = Comments.where(comment_on: "playlist", location_id: @list_id)
  end
end
