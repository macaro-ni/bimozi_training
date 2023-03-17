require "test_helper"

class Public::PracticesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_practices_show_url
    assert_response :success
  end

  test "should get index" do
    get public_practices_index_url
    assert_response :success
  end

  test "should get create" do
    get public_practices_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_practices_destroy_url
    assert_response :success
  end
end
