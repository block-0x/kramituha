require 'test_helper'

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url
    assert_response :success
  end

  test "should get new" do
    get new_video_url
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post videos_url, params: { video: { channel_url: @video.channel_url, create_stamp: @video.create_stamp, description: @video.description, dislike: @video.dislike, like: @video.like, order: @video.order, queriy: @video.queriy, tag: @video.tag, title: @video.title, video_length: @video.video_length, video_url: @video.video_url, view: @video.view } }
    end

    assert_redirected_to video_url(Video.last)
  end

  test "should show video" do
    get video_url(@video)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_url(@video)
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { channel_url: @video.channel_url, create_stamp: @video.create_stamp, description: @video.description, dislike: @video.dislike, like: @video.like, order: @video.order, queriy: @video.queriy, tag: @video.tag, title: @video.title, video_length: @video.video_length, video_url: @video.video_url, view: @video.view } }
    assert_redirected_to video_url(@video)
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete video_url(@video)
    end

    assert_redirected_to videos_url
  end
end
