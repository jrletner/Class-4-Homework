class Account
  # set up a class array
  @@Account = []

  # allow balances and names to be read
  attr_reader :balance, :name

  # initialze instance variables
  # have the balance have a default value of 100
  def initialize(name, balance = 100, pin)
    @name = name
    @balance = balance
    @pin = pin
  end

  # create a method to retrieve account balance
  def get_balance(pin)
    if pin == @pin
      puts "Hi #{name}, your balance is $#{balance}"
    else
      pin_error
    end
  end

  # set a message for pin error
  def pin_error
    puts "Wrong PIN number"
  end
end

joe_checking = Account.new("Joe", 500, 1234)
joe_checking.get_balance(1234)

bob_checking = Account.new("Bob", 500, 1234)
bob_checking.get_balance(1234)
