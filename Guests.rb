class Guests

  attr_reader :name, :fave_song
  attr_accessor :wallet


  def initialize(name, wallet, fave_song)
    @name = name
    @wallet = wallet
    @fave_song = fave_song
  end



  def buy_drink(bar, drink)
    if self.wallet >= drink.price
      self.wallet -= drink.price
      bar.till += drink.price
    else
      p "Sorry, #{drink.name} is £#{drink.price}; you're £#{drink.price - self.wallet} short #{self.name}."
    end
  end



end
