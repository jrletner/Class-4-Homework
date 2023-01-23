class Account
  # set up a class array
  @@Account = []

  # allow balances and names to be read
  attr_reader :balance, :name

  # initialze instance variables
  # have the balance have a default value of 100
  def initialize(name, type, balance = 100, pin)
    @name = name
    @type = type
    @balance = balance
    @pin = pin
    @@Account << self
  end

  # create a method to retrieve account balance
  def get_balance(pin)
    if pin == @pin
      puts "Hi #{name}, your balance is $#{balance}"
    else
      pin_error
    end
  end

  # create a method to make a withdrawal
  def withdraw(pin, amount)
    if pin == @pin
      @balance -= amount
      puts "Hi #{name}, you made a withdrawal of $#{amount} from #{@type}, your balance is now $#{balance}"
    else
      pin_error
    end
  end

  # create a method to make a deposit
  def deposit(pin, amount)
    if pin == @pin
      @balance += amount
      puts "Hi #{name}, you made a deposit of $#{amount} into #{@type}, your balance is now $#{balance}"
    else
      pin_error
    end
  end

  # set a message for pin error
  def pin_error
    puts "Wrong PIN number"
  end

  # get all accounts
  def all
    @@Account
  end
end

system("clear")
joe_checking = Account.new("Joe", "Checking", 500, 1234)
joe_checking.withdraw(1234, 100)

joe_savings = Account.new("Joe", "Savings", 900, 1234)
joe_savings.deposit(1234, 1000)

bob_checking = Account.new("Bob", "Checking", 400, 5678)
bob_checking.deposit(5678, 1000)

bob_savings = Account.new("Bob", "Savings", 900, 5678)
bob_savings.deposit(5678, 1000)
