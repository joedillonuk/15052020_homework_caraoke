require('minitest/autorun')
require('minitest/reporters')
require_relative('../Guests.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuests < MiniTest::Test



  def setup()
@guest1 = Guests.new("Jeff Turner", 50, "I Think We're Alone Now")
@guest2 = Guests.new("Kelly McCormick", 50, "I Think We're Alone Now")
@guest3 = Guests.new("Manuel Calavera", 10, "As Time Goes By")

  end


def test_guest_has_favourite_song
assert_equal("Thriller", @guest1.fave_song)
end






end
