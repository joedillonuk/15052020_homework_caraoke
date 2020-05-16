require('minitest/autorun')
require('minitest/reporters')
require_relative('../Rooms.rb')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRooms < MiniTest::Test


  def setup()
    @room1 = Rooms.new(4)

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
  guest = ["one", "two"]
  @room1.add_guests_to_room(guest)
assert_equal(2, @room1.check_capacity)
end

def test_check_capacity__room_half_full
  @room1.guests = ["joe", "joe2"]
# call the "add_guests_to_room" method here
assert_equal(2, @room1.check_capacity)
end




end
