require('minitest/autorun')
require('minitest/reporters')
require_relative('../KaraokeBar.rb')
require_relative('../Rooms.rb')
require_relative('../Song.rb')
require_relative('../Guests.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestKaraokeBar < MiniTest::Test


  def setup()
    @bar1 = KaraokeBar.new("Mr Singh's")
    @room1 = Rooms.new(4)
    @rooms = [@room1]

    @guest1 = Guests.new("Jeff Turner", 50, "I Think We're Alone Now")
    @guest2 = Guests.new("Kelly McCormick", 40, "I Think We're Alone Now")
    @guest3 = Guests.new("Manuel Calavera", 10, "As Time Goes By")
    @guest4 = Guests.new("Onlya Fiver", 5, "Ghost")

    @potential_guests = [@guest1, @guest2, @guest3]

  end

  # gets number of guests from user
  # def test_greet
  #   # test will check for party of 3 (integer).
  #   assert_equal(3, @bar1.greet(@bar1))
  # end

  # def test_add_to_lobby
  #   party = @bar1.greet(@bar1)
  #   @bar1.add_to_lobby(@bar1.lobby, party, @potential_guests)
  #   assert_equal(3, @bar1.lobby.count)
  # end

  # def test_charge_guests__till_increase
  # # setup
  # # greeting guests and adding 3 to lobby from poential_guests
  # party = @bar1.greet(@bar1) # returns number of guests to add to lobby from potential_guests array
  # @bar1.add_to_lobby(@bar1.lobby, party, @potential_guests)
  #   @bar1.charge_guests(@bar1.lobby, 10)
  #   assert_equal(30, @bar1.till)
  # end
  #
  # def test_charge_guests__wallet_decrease
  #   # setup
  #   # greeting guests and adding 3 to lobby from poential_guests
  #   party = @bar1.greet(@bar1) # returns number of guests to add to lobby from potential_guests array
  #   @bar1.add_to_lobby(@bar1.lobby, party, @potential_guests)
  # @bar1.charge_guests(@bar1.lobby, 10)
  # assert_equal(40, @guest1.wallet)
  # assert_equal(30, @guest2.wallet)
  # assert_equal(0, @guest3.wallet)
  # end

  def test_remove_guest_with_limited_funds
    lobby_guests = [@guest1, @guest2, @guest4]
    @bar1.charge_guests(lobby_guests, 10)
    assert_equal(2, lobby_guests.count)
    assert_equal(20, @bar1.till) # ensuring money isn't collected for guest leaving lobby due to lack of funds
assert_equal(5, @guest4.wallet) # making sure Guest 4 wasn't chanrged
  end

  def test_check_in_guests

    @bar1.check_in_guests(@rooms, @guest1, @guest2)
    assert_equal(2, @room1.check_capacity)
  end



end
