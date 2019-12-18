require 'test_helper'

class Plaintext::Rails::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Plaintext::Rails
  end
end
