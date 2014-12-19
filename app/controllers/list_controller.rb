class ListController < ApplicationController
  def create
    if !(List.where(name: params[:list][:name]).length > 0)
      List.create(name: params[:list][:name])
    end
    redirect_to :back
  end

  def destroy
    Playlist.delete_all(list_id: params[:id])
    List.delete(params[:id])
    redirect_to :back
  end
end
