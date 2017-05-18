require 'test_helper'

class DailyTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_topic = daily_topics(:one)
  end

  test "should get index" do
    get daily_topics_url, as: :json
    assert_response :success
  end

  test "should create daily_topic" do
    assert_difference('DailyTopic.count') do
      post daily_topics_url, params: { daily_topic: { content: @daily_topic.content } }, as: :json
    end

    assert_response 201
  end

  test "should show daily_topic" do
    get daily_topic_url(@daily_topic), as: :json
    assert_response :success
  end

  test "should update daily_topic" do
    patch daily_topic_url(@daily_topic), params: { daily_topic: { content: @daily_topic.content } }, as: :json
    assert_response 200
  end

  test "should destroy daily_topic" do
    assert_difference('DailyTopic.count', -1) do
      delete daily_topic_url(@daily_topic), as: :json
    end

    assert_response 204
  end
end
