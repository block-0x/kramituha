json.extract! video, :id, :title, :description, :tag, :view, :video_url, :order, :queriy, :video_length, :like, :dislike, :channel_url, :create_stamp, :created_at, :updated_at
json.url video_url(video, format: :json)
