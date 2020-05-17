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




  # Updated to remove arguments from method
  def check_in_guests
    for room in rooms
      if room.capacity - room.guests.count >= lobby.count
         return room.add_guests_to_room(lobby)
      end
    end
    if lobby.count > self.return_max_capacity
      p "I'm sorry, the largest party we can accomodate is #{self.return_max_capacity}."
    else
    p "Sorry, we don't have enough space for a party of #{lobby.count} at the moment."
end
  end



  # PREVIOUS METHOD. This has now been updated to remove need for arguments.
  # def check_in_guests(rooms, lobby)
  #      # for room in @rooms
  #      #   if room.check_capacity >= @lobby.count
  #      for room in rooms
  #        room.add_guests_to_room(lobby)
  #      end
  #    end

def return_max_capacity
  max = rooms.max_by{|room| room.capacity}
  return max.capacity
end


end
