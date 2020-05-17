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
    for person in guest
      guests.push(person)
    end
  end

  def check_out_all
      self.guests.clear
  end

  def check_out_guest(guest)
    self.guests.delete(guest)
    p "#{guest.name} has left."
  end

  def add_songs_to_playlist(playlist, songs_list)
    for song in songs_list
      playlist.push(song)
    end
  end

  def is_guests_fave_on_playlist(guest, playlist)
    for song in playlist
      if guest.fave_song == song.title
        p "Oh my god I love #{song.title}! #{song.artist} is the best!"
return true
      end
    end
  end


  end
