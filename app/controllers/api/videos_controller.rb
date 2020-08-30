class Api::VideosController < ApplicationController
  # def show
  #   @video = Video.find(params[:id])
  #   render 'show', formats: 'json', handlers: 'jbuilder'
  # end
  def index
    # 表示するページの番号を指定
    page = params[:page] || 1

    # １ページあたりの表示件数を指定
    per = params[:per] || 500

    # ページネーションで指定レコードを取得
    videos = Video.page(page).per(per)

    # ページネーションした時の全ページ数
    total_pages = videos.total_pages

    # レスポンスデータの定義
    response = {
      # videoレコードはidとnameフィールドのみ表示する
      videos: videos.select(:view, :title, :video_url),
      total_pages: total_pages
    }

    # json形式でレスポンスを返却
    render json: response
  end
end
