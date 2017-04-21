require 'test_helper'

class PMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pm = pms(:one)
  end

  test "should get index" do
    get pms_url, as: :json
    assert_response :success
  end

  test "should create pm" do
    assert_difference('Pm.count') do
      post pms_url, params: { pm: { body: @pm.body, image: @pm.image, receiver_id: @pm.receiver_id, sender_id: @pm.sender_id, subject: @pm.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show pm" do
    get pm_url(@pm), as: :json
    assert_response :success
  end

  test "should update pm" do
    patch pm_url(@pm), params: { pm: { body: @pm.body, image: @pm.image, receiver_id: @pm.receiver_id, sender_id: @pm.sender_id, subject: @pm.subject } }, as: :json
    assert_response 200
  end

  test "should destroy pm" do
    assert_difference('Pm.count', -1) do
      delete pm_url(@pm), as: :json
    end

    assert_response 204
  end
end
