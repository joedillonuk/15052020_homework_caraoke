require('minitest/autorun')
require('minitest/reporters')
require_relative('../KaraokeBar.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestKaraokeBar < MiniTest::Test


  def setup()
@bar1 = KaraokeBar.new("Mr Singh's")
  end



end
