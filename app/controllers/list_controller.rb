class ListController < ApplicationController
  def create
    Lists.create(name: params[:list][:name])
  end
end
