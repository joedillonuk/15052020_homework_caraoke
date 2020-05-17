require('minitest/autorun')
require('minitest/reporters')
require_relative('../Rooms.rb')
require_relative('../Song.rb')
require_relative('../Guests.rb')
require_relative('../KaraokeBar.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRooms < MiniTest::Test


  def setup()
    @bar1 = KaraokeBar.new("Mr Singh's")
    @room1 = Rooms.new(4)
    @rooms = [@room1]

    @guest1 = Guests.new("Jeff Turner", 50, "I Think We're Alone Now")
    @guest2 = Guests.new("Kelly McCormick", 40, "I Think We're Alone Now")
    @guest3 = Guests.new("Manuel Calavera", 10, "As Time Goes By")
    @guest4 = Guests.new("Onlya Fiver", 5, "Ghost")

# Below is an array of guests
    @potential_guests = [@guest1, @guest2, @guest3]

    @song01 = Song.new("Where The Wild Roses Grow", "Nick Cave & The Bad Seeds", "Rock", 1995)
    @song02 = Song.new("Song 2", "Blur", "Rock", 1997)
    @song03 = Song.new("I Think We're Alone Now", "Tiffany", "Pop", 1987)
    @song04 = Song.new("I Think We're Alone Now", "Lene Lovich", "Pop", 1978)
    @song05 = Song.new("I Think We're Alone Now", "Tommy James and the Shondells", "Pop", 1967)
    @song06 = Song.new("I Think We're Alone Now", "Snuff", "Punk", 1998)
    @song07 = Song.new("I Think We're Alone Now", "Girls Aloud", "Electropop", 2006)
    @song08 = Song.new("Total Eclipse Of The Heart", "Bonnie Tyler", "Pop", 1983)
    @song09 = Song.new("Thank You For Being A Friend", "Cynthia Fee", "Pop", 1985)
    @song10 = Song.new("You Oughta Know", "Alanis Morissette", "Pop", 1995)
    @song11 = Song.new("Livin' On A Prayer", "Bon Jovi", "Rock", 1986)


# Below is an array of the complete song list
    @songs_list = [@song01, @song02, @song03, @song04, @song05, @song06, @song07, @song08, @song09, @song10, @song11]


  end

  def test_check_capacity__room_empty
    assert_equal(4, @room1.check_capacity)
  end


# Testing input type to make "add_guests_to_room" more flexible
# might actually end up doing this by always converting number of guests being added to an array?
# Actually, the guests are gonna be objects so it will always be an array
#   def test_check_variable_is_string__is_string
# example = "string"
#     assert_equal(true, @room1.is_string(example))
# end

# def test_add_guests_to_room__single_guest
#   guest = "Joe"
#   @room1.add_guests_to_room(guest)
# assert_equal(1, @room1.check_capacity)
# end

def test_add_guests_to_room__guest_array
  guest = [@guest1, @guest2]
  @room1.add_guests_to_room(guest)
assert_equal(2, @room1.check_capacity)
end

def test_check_out_all
# adding some guests to room for test
@room1.guests = [@guest1, @guest2, @guest3, @guest4]
assert_equal(4, @room1.guests.count)
@room1.check_out_all
assert_equal(0, @room1.guests.count)
end

def test_check_out_guest
  # adding some guests to room for test
  @room1.guests = [@guest1, @guest2, @guest3, @guest4]
  assert_equal(4, @room1.guests.count)
  @room1.check_out_guest(@guest1)
  assert_equal(3, @room1.guests.count)
end

def test_check_capacity__room_half_full
  @room1.guests = ["joe", "joe2"]
# call the "add_guests_to_room" method here
assert_equal(2, @room1.check_capacity)
end

def test_add_songs_to_playlist
  @room1.add_songs_to_playlist(@songs_list)
  assert_equal(11, @room1.playlist.count)
end

def test_is_guests_fave_on_playlist__true
  #adding some songs to playlist before check
  @room1.add_songs_to_playlist(@songs_list)
  assert_equal(true, @room1.is_guests_fave_on_playlist(@guest1))
end

def test_is_guests_fave_on_playlist__false
  @room1.add_songs_to_playlist(@songs_list)
  assert_equal(false, @room1.is_guests_fave_on_playlist(@guest4))
end



end
