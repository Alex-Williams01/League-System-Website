require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_select 'h2', 'Home'
    assert_select 'p#welcome', 'Welcome to the National University League. Here you can access fixtures, league table, players\' information and team information. This is the home page where you can find details on all the pages and their functionality'
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should post request contact but no email" do
     post request_contact_url
     assert_response :redirect
     assert_not_empty flash[:alert]
     assert_nil flash[:notice]
   end

   test "should post request contact" do
     post request_contact_url, params: {name: "Alex", email: "alex@me.com", telephone: "123456789", message: "Hello"}
     assert_response :redirect
     assert_nil flash[:alert]
     assert_not_empty flash[:notice]
   end

end
