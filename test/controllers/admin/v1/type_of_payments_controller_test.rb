require "test_helper"

class Admin::V1::TypeOfPaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_v1_type_of_payments_index_url
    assert_response :success
  end
end
