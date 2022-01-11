require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "ruby 2.7 kwargs error" do
    car = Car.create
    assert_equal car.state, 'parked'

    driver = User.create
    # should issue a warning
    car.ignite!(user: driver)

    assert_equal car.state, 'idling'
    assert_equal car.user, driver
  end
end
