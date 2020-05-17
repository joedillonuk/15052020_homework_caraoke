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

  def greet
    p "Welcome to #{self.name}! How many are in your party?"
    party = gets.chomp
    p "Okay! Let me check if we have a room for #{party} available"
    return party.to_i
  end

  def add_to_lobby(party, guests)
    for guest in guests
      if party > 0
        self.lobby.push(guest)
        party -= 1
      end
    end
  end

  def charge_guests(fee)
    collected = 0
    for guest in self.lobby
      if guest.wallet >= fee
        guest.wallet -= fee
        collected += fee
      else
        p "Im sorry #{guest.name}, it's a £#{fee} to enter."
        self.lobby.delete(guest)
        p "** #{guest.name} has gone home crying **"
      end
    end
      @till += collected

  end




    def check_in_guests(rooms, lobby)
      # for room in @rooms
      #   if room.check_capacity >= @lobby.count
      for room in rooms
        p room
        room.add_guests_to_room(lobby)
        p room
      end
  end

  # def check_in_guests(rooms, lobby)
  #      # for room in @rooms
  #      #   if room.check_capacity >= @lobby.count
  #      for room in rooms
  #        room.add_guests_to_room(lobby)
  #      end
  #    end


  end
