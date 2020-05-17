require('minitest/autorun')
require('minitest/reporters')
require_relative('../Guests.rb')
require_relative('../Drinks.rb')
require_relative('../KaraokeBar.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuests < MiniTest::Test



  def setup()

    @bar1 = KaraokeBar.new("Mr Singh's")

    @guest1 = Guests.new("Jeff Turner", 50, "I Think We're Alone Now")
    @guest2 = Guests.new("Kelly McCormick", 50, "I Think We're Alone Now")
    @guest3 = Guests.new("Manuel Calavera", 10, "As Time Goes By")
    @guest4 = Guests.new("Dion Blaster", 3, "Work Your Body")

    @drink1 = Drink.new("Beer", 5)

  end


  def test_guest_has_favourite_song
    assert_equal("I Think We're Alone Now", @guest1.fave_song)
  end

  def test_buy_drink__wallet_decrease
    @guest1.buy_drink(@bar1, @drink1)
    assert_equal(45, @guest1.wallet)
  end

  def test_buy_drink__not_enough_cash
    result = @guest4.buy_drink(@bar1, @drink1)
    assert_equal("Sorry, Beer is £5; you're £2 short Dion Blaster.", result)
  end

  def test_buy_drink__bar_till_increase
    @guest1.buy_drink(@bar1, @drink1)
    assert_equal(5, @bar1.till)
  end

end
