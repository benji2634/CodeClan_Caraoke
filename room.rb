class Room

  attr_reader :name, :limit

  def initialize(name, guests, songs, limit, entry_fee)
    @name = name
    @guests = guests
    @songs = songs
    @limit = limit
    @entry_fee = entry_fee
  end

  def num_of_guests
    return @guests.count
  end

  def num_of_songs
    return @songs.count
  end

  def add_song
    @new_song = Song.new("Deftones", "Goon Squad")
    @songs << @new_song
    return @songs.count
  end

  def check_in_guest
    @new_guest = Guest.new("Ross", 500, 500)
    @guests << @new_guest
    return @guests.count
  end

  def check_out_guest
    @guests.delete(@new_guest)
    return @guests.count
  end

  def limit_cant_be_exceeded
    while @guests.count < 10 do
      check_in_guest
    end
      return @guests.count
  end

  def entry_fee
    return @entry_fee
  end

  def fav_song(title)
    if found_song = @songs.find { |fav| title == fav.title}
      return "Beelzebub!"
    end
  end
end