require "test_helper"

class Public::SamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_samples_show_url
    assert_response :success
  end
end
