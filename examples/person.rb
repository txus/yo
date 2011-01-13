require_relative '../lib/yo'

class Person
  extend Yo

  so i think it goes like this

  defnly he shud have an accessor 'name'
  a person also has a property 'age', yeah

  ya should know he has some freakin 'money', too
  prolly he demands some privacy on da 'money', yo

  he might as well have a pretty badass 'mood'
  but you never know inthis neighborhood

  but hey maybe its all bullshit, so
  we better get going bro

  shake it baby, yeah

end

# The same as:
#
# class Person
#   attr_accessor :name, :age, :mood, :money
# end

john = Person.new
john.name = "John"
puts john.name # => "John"

john.age = 29
puts john.age # => 29

john.money = "$3"
puts john.money # => "$3"

john.mood = :badass
puts john.mood # => :badass

