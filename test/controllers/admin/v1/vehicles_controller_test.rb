require "test_helper"

class Admin::V1::VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_v1_vehicles_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_v1_vehicles_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_v1_vehicles_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_v1_vehicles_update_url
    assert_response :success
  end
end
