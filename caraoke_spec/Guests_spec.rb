require('minitest/autorun')
require('minitest/reporters')
require_relative('../Guests.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuests < MiniTest::Test



  def setup()
@guest1 = Guests.new("Big Iain", 50, "Thriller")
  end


def test_guest_has_favourite_song
assert_equal("Thriller", @guest1.fave_song)
end






end
