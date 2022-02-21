require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "shoud get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
     get root_path
    assert_response :success
    assert_select "title", "App Testing Service"
  end

  test "should get waht we do" do
    get services_path
    assert_response :success
    assert_select "title", "What we do | App Testing Service"
  end

  test "should get price" do
     get pricing_path
    assert_response :success
    assert_select "title", "Pricing | App Testing Service"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "FAQ | App Testing Service"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | App Testing Service"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | App Testing Service"
  end

end
