require "test_helper"

class MastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master = masters(:one)
  end

  test "should get index" do
    get masters_url, as: :json
    assert_response :success
  end

  test "should create master" do
    assert_difference("Master.count") do
      post masters_url, params: { master: { districtname: @master.districtname } }, as: :json
    end

    assert_response :created
  end

  test "should show master" do
    get master_url(@master), as: :json
    assert_response :success
  end

  test "should update master" do
    patch master_url(@master), params: { master: { districtname: @master.districtname } }, as: :json
    assert_response :success
  end

  test "should destroy master" do
    assert_difference("Master.count", -1) do
      delete master_url(@master), as: :json
    end

    assert_response :no_content
  end
end
