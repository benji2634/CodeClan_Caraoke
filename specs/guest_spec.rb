require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative '../guest'

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Bertie", 100, 100)
  end

  def test_guest_has_name
    assert_equal("Bertie", @guest.name)
  end

  def test_guest_has_initial_cash
    assert_equal(100, @guest.initial_cash)
  end

  def test_guest_can_spend_cash
    # binding.pry
    assert_equal(80, @guest.spend_cash(20))
  end

  def test_guest_cant_spend_below_zero
    # binding.pry
    assert_equal(0, @guest.spend_cash(101))
  end

end