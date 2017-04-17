require 'test_helper'

class SubtitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subtitle = subtitles(:one)
  end

  test "should get index" do
    get subtitles_url, as: :json
    assert_response :success
  end

  test "should create subtitle" do
    assert_difference('Subtitle.count') do
      post subtitles_url, params: { subtitle: { title: @subtitle.title, topic_id: @subtitle.topic_id, user_id: @subtitle.user_id, votes: @subtitle.votes } }, as: :json
    end

    assert_response 201
  end

  test "should show subtitle" do
    get subtitle_url(@subtitle), as: :json
    assert_response :success
  end

  test "should update subtitle" do
    patch subtitle_url(@subtitle), params: { subtitle: { title: @subtitle.title, topic_id: @subtitle.topic_id, user_id: @subtitle.user_id, votes: @subtitle.votes } }, as: :json
    assert_response 200
  end

  test "should destroy subtitle" do
    assert_difference('Subtitle.count', -1) do
      delete subtitle_url(@subtitle), as: :json
    end

    assert_response 204
  end
end
