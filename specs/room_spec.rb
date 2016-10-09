require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative '../room'
require_relative '../guest'
require_relative '../song'

class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("Bertie", 100, 100)
    @guest2 = Guest.new("Bobby", 200, 200)

    guests = [@guest1, @guest2]

    @song1 = Song.new("Queen", "Bohemian Rhapsody")
    @song2 = Song.new("John Denver", "Country Roads")

    songs = [@song1, @song2]

    @room = Room.new("Rock till you drop!", guests, songs, 10, 15)

  end

  def test_room_name
    assert_equal("Rock till you drop!", @room.name)
  end

  def test_num_of_guests
    assert_equal(2, @room.num_of_guests)
  end

  def test_num_of_songs
    assert_equal(2, @room.num_of_songs)
  end

  def test_add_song_to_room
    @room.add_song
    assert_equal(3, @room.num_of_songs)
  end

  def test_check_in_guest
    @room.check_in_guest
    assert_equal(3, @room.num_of_guests)
  end

  def test_check_out_guest
    @room.check_out_guest
    assert_equal(2, @room.num_of_guests)
  end

  def test_room_limit
    assert_equal(10, @room.limit)
  end

  def test_limit_cant_be_exceeded
    assert_equal(10, @room.limit_cant_be_exceeded)
  end

  def test_room_has_entry_fee
    assert_equal(15, @room.entry_fee)
  end

  def test_guest_can_pay_entry_fee
    assert_equal(85, @guest1.spend_cash(@room.entry_fee))
  end

  def test_guests_favourite_song_is_in_the_room
    fav_song = @room.fav_song("Bohemian Rhapsody")
    assert_equal("Beelzebub!", fav_song)
  end
end