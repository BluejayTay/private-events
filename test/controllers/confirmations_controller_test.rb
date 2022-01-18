require "test_helper"

class ConfirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get confirmations_new_url
    assert_response :success
  end

  test "should get create" do
    get confirmations_create_url
    assert_response :success
  end

  test "should get delete" do
    get confirmations_delete_url
    assert_response :success
  end
end
