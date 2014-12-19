class PlaylistsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    Playlist.create(list_id: params[:playlist][:list_id], video_id: params[:playlist][:list_id])
  end

  def show
    vid_list = Playlist.where(list_id: params[:id])
    @vid_array = []
    vid_list.each do |v|
      @vid_array.push(Videos.find(v.video_id))
    end
  end

end
