class Rooms

attr_reader :capacity
attr_accessor :playlist, :guests

  def initialize(capacity)
    @capacity = capacity
    @playlist = []
    @guests = []
  end





def check_capacity
  return capacity - guests.count
end

# Just testing this check if a variable entered is a String.
# Not actually gonna use it in this instance but it's nice to know it exists
# def is_string(variable)
#   variable.is_a?(String)
# end

def add_guests_to_room(guest)
  for item in guest
    guests.push(guest)
  end
end




end
