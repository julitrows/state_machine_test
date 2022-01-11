require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "ruby 2.7 kwargs error 1" do
    car = Car.create
    driver = User.create

    # should issue a warning
    car.ignite!(user: driver)

    assert_equal car.state, 'idling'
    assert_equal car.user, driver
  end

  test "ruby 2.7 kwargs error 2" do
    car = Car.create
    driver = User.create

    car.ignite(user: driver)

    # should issue a warning
    car.park!('parallel', parasol: true)

    assert_equal car.state, 'parked'
  end
end
