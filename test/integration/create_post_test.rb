require "test_helper"
require "rspec/rails"

class CreatePostTest < ActionDispatch::IntegrationTest
 
    test "should display the new user log in name" do
      get "/users/sign_in"
      assert_response :success

      post "/users", params: {user: {email: "ali_tes@gmail.com", completed: true}}
      assert-assert_response :found
    end
end