class KaraokeBar

  attr_reader :name
  attr_accessor :songs, :drinks, :lobby, :rooms


  def initialize(name)
    @name = name
    @songs = []
    @drinks = []
    @lobby = []
    @rooms = []
  end

  def greet(bar)
    p "Welcome to #{bar.name}! How many are in your party?"
    party = gets.chomp
    p "Okay! Let me check if we have a room for #{party} available"
    return party.to_i
  end

  def add_to_lobby(lobby, party, guests)
    for guest in guests
      if party > 0
        lobby.push(guest)
        party -= 1
      end
    end
  end




  def bar1_value
    return @bar1.name
  end

  def check_in_guests(rooms, guest1, guest2)
    lobby = [guest1, guest2]

    # for room in @rooms
    #   if room.check_capacity >= @lobby.count
    for room in rooms
      room.add_guests_to_room(lobby)
    end
  end




end
