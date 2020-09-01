class VideosController < ApplicationController
  def index
  end
  def import
    Video.import(params[:file])
    redirect_to videos_url
  end
end
