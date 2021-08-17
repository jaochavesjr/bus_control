require "test_helper"

class Admin::V1::TravelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_v1_travels_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_v1_travels_show_url
    assert_response :success
  end

  test "should get create" do
    get admin_v1_travels_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_v1_travels_update_url
    assert_response :success
  end
end
