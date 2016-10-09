class Guest

attr_reader :name, :initial_cash

  def initialize(name, initial_cash, remaining_cash)
    @name = name    
    @initial_cash = initial_cash
    @remaining_cash = remaining_cash
  end

  def spend_cash(spend)
    if @remaining_cash >= spend
      @remaining_cash -= spend
      return @remaining_cash
    else 
      return @remaining_cash = 0
    end
  end

end 