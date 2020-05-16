class KaraokeBar

  attr_reader :name
  attr_accessor :songs, :drinks, :lobby, :rooms, :till


  def initialize(name)
    @name = name
    @songs = []
    @drinks = []
    @lobby = []
    @rooms = []
    @till = 0
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

  def charge_guests(lobby_guests, fee)
    collected = 0
    for guest in lobby_guests
      if guest.wallet >= fee
        guest.wallet -= fee
        collected += fee
      else
        p "Im sorry #{guest.name}, it's a £#{fee} to enter."
        lobby_guests.delete(guest)
      end
    end
      @till += collected

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
