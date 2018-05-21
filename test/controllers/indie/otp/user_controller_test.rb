require 'test_helper'

module Indie::Otp
  class UserControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get register" do
      get user_register_url
      assert_response :success
    end

    test "should get login" do
      get user_login_url
      assert_response :success
    end

    test "should get logout" do
      get user_logout_url
      assert_response :success
    end

  end
end
