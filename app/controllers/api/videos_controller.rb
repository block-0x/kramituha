class Api::VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end
