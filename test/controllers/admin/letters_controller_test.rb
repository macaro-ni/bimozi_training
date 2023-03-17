require "test_helper"

class Admin::LettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_letters_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_letters_edit_url
    assert_response :success
  end

  test "should get create" do
    get admin_letters_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_letters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_letters_destroy_url
    assert_response :success
  end
end
