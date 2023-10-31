require "test_helper"

class Api::V1::FacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_facility = api_v1_facilities(:one)
  end

  test "should get index" do
    get api_v1_facilities_url, as: :json
    assert_response :success
  end

  test "should create api_v1_facility" do
    assert_difference("Api::V1::Facility.count") do
      post api_v1_facilities_url, params: { api_v1_facility: { district_id: @api_v1_facility.district_id, facility_code: @api_v1_facility.facility_code, facility_name: @api_v1_facility.facility_name, owner_id: @api_v1_facility.owner_id } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_facility" do
    get api_v1_facility_url(@api_v1_facility), as: :json
    assert_response :success
  end

  test "should update api_v1_facility" do
    patch api_v1_facility_url(@api_v1_facility), params: { api_v1_facility: { district_id: @api_v1_facility.district_id, facility_code: @api_v1_facility.facility_code, facility_name: @api_v1_facility.facility_name, owner_id: @api_v1_facility.owner_id } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_facility" do
    assert_difference("Api::V1::Facility.count", -1) do
      delete api_v1_facility_url(@api_v1_facility), as: :json
    end

    assert_response :no_content
  end
end
