require "test_helper"

class Tinyurl::BijectionTest < ActiveSupport::TestCase
  test "encode an interger into a digest" do
    assert_equal "c5hc", Tinyurl::Bijection.encode(133742)
  end

  test "decode a digest to an integer" do
    assert_equal 133742, Tinyurl::Bijection.decode("c5hc")
  end
end
