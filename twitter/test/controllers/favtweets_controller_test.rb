require 'test_helper'

class FavtweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favtweets_index_url
    assert_response :success
  end

end
