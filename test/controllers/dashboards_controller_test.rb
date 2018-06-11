require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_trips" do
    get dashboards_my_trips_url
    assert_response :success
  end

  test "should get my_boats" do
    get dashboards_my_boats_url
    assert_response :success
  end

end
