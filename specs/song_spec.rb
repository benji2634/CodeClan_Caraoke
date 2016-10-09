require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative '../song'

class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Queen", "Bohemian Rhapsody")
  end

  def test_song_has_artist
    assert_equal("Queen", @song.artist)
  end

  def test_song_has_title
    assert_equal("Bohemian Rhapsody", @song.title)
  end

end