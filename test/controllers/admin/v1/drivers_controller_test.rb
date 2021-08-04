require "test_helper"

class Admin::V1::DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_v1_drivers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_v1_drivers_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_v1_drivers_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_v1_drivers_update_url
    assert_response :success
  end
end
