require "test_helper"

class Admin::SamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_samples_show_url
    assert_response :success
  end
end
