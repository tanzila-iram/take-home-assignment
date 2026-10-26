require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "fixture users are valid" do
    [users(:one), users(:two)].each do |user|
      assert user.valid?, user.errors.full_messages.to_sentence
    end
  end

  test "fixture users can authenticate with the fixture password" do
    assert users(:one).authenticate("password123")
  end
end
