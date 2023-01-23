class Person
  attr_accessor :name, :age

  @@People = []

  def initialize(name, age)
    @name = name
    @age = age

    @@People << self
  end

  def add_person(name, age)
    @@People.push(name, age)
  end

  def print_all_people
    puts "Name: #{@name} \n Age: #{@age}"
  end
end

person_1 = Person.new("David", 49)
person_2 = Person.new("Joe", 48)
person_1.print_all_people
person_2.print_all_people
