require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "new user" do
    user = User.new(email:'admin@admin.com',password:'123456',password_confirmation:'123456', roles_mask: '1' )
    assert_not user.save
  end
end
