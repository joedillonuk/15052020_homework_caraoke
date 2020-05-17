require('minitest/autorun')
require('minitest/reporters')
require_relative('../Song.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSong < MiniTest::Test



  def setup()
@song01 = ("Where The Wild Roses Grow", "Nick Cave & The Bad Seeds", "Rock", 1995)
@song02 = ("Song 2", "Blur", "Rock", 1997)
@song03 = ("I Think We're Alone Now", "Tiffany", "Pop", 1987)
@song04 = ("I Think We're Alone Now", "Lene Lovich", "Pop", 1978)
@song05 = ("I Think We're Alone Now", "Tommy James and the Shondells", "Pop", 1967)
@song06 = ("I Think We're Alone Now", "Snuff", "Punk", 1998)
@song07 = ("I Think We're Alone Now", "Girls Aloud", "Electropop", 2006)
@song08 = ("Total Eclipse Of The Heart", "Bonnie Tyler", "Pop", 1983)
@song09 = ("Thank You For Being A Friend", "Cynthia Fee", "Pop", 1985)
@song10 = ("You Oughta Know", "Alanis Morissette", "Pop", 1995)
@song11 = ("I Think We're Alone Now", "Girls Aloud", "Electropop", 2006)



@songs_list = [@song01, @song02, @song03, @song04, @song05, @song06, @song07, @song08, @song09, @song10, @song11]


  end









end
