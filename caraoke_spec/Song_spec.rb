require('minitest/autorun')
require('minitest/reporters')
require_relative('../Song.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSong < MiniTest::Test



  def setup()
@song1 = ("Where The Wild Roses Grow", "Nick Cave & The Bad Seeds", "Rock", "1995")
@song2 = ("Song 2", "Blur", "Rock", "1997")
@song3 = ("I Think We're Alone Now", "Tiffany", "Pop", "1987")
@song4 = ("I Think We're Alone Now", "Lene Lovich", "Pop", "1978")
@song5 = ("I Think We're Alone Now", "Tommy James and the Shondells", "Pop", "1967")
@song6 = ("I Think We're Alone Now", "Snuff", "Punk", "1998")
@song6 = ("I Think We're Alone Now", "Girls Aloud", "Electropop", "2006")
  end






end
