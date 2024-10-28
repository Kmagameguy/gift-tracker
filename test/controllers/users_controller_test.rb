require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  before do
    @user_params = {
      username: "John Doe",
      password: "secure_password",
      password_confirmation: "secure_password"
    }

    @user = User.create!(@user_params.merge(id: 1))
  end

  describe "#new" do
    it "should have a new user path" do
      get new_user_url

      assert_response :success
      assert_select "h1", "Create Account"
    end
  end

  describe "#create" do
    it "should create a new user with valid parameters" do
      @valid_user = @user_params.merge(id: 42, username: "Jane Doe")
      post users_url(user: @valid_user)

      assert_redirected_to root_path
      assert_not_nil session[:user_id]
      assert_equal flash[:notice], "Account was successfully created."
    end

    it "should not create a new user with invalid parameters" do
      @invalid_user = @user_params.merge(id: 42, username: "")
      post users_url(user: @invalid_user)

      assert_response :unprocessable_entity
      assert_select "h1", "Create Account"
    end
  end

  describe "#destroy" do
    it "should destroy a user" do
      delete user_url(@user)

      assert_redirected_to root_path
      assert_nil session[:user_id]
      assert_equal flash[:notice], "Account was successfully deleted."
    end
  end
end
