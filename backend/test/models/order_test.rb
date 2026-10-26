require "test_helper"

class OrderTest < ActiveSupport::TestCase
  test "fixture orders are valid" do
    [orders(:one), orders(:two)].each do |order|
      assert order.valid?, order.errors.full_messages.to_sentence
    end
  end
end
