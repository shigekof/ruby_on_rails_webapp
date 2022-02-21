require 'test_helper'

class TermsControllerTest < ActionDispatch::IntegrationTest
  test "should get development" do
    get terms_development_url
    assert_response :success
  end

  test "should get marketing" do
    get terms_marketing_url
    assert_response :success
  end

  test "should get advertising" do
    get terms_advertising_url
    assert_response :success
  end

  test "should get translating" do
    get terms_translating_url
    assert_response :success
  end

  test "should get customer" do
    get terms_customer_url
    assert_response :success
  end

  test "should get privacy" do
    get terms_privacy_url
    assert_response :success
  end

end
