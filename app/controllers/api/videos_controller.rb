class Api::VideosController < ApplicationController
  def index
    videos = Video.all
    rows = {
      videos: videos.select(:view, :title, :video_url, :order)
    }
    render json: rows
  end
end
