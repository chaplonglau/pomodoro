require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup

  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About"
  end

  test "should get root" do 
    get root_url
    assert_response :success
  end

end
