require_relative './nameable'
require_relative './rental'

class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission = true)
    @id = rand(1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services
    of_age || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  private
  def of_age
    @age >= 18
  end
end
