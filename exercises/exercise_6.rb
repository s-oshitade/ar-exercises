require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Amy", last_name: "Kingston", hourly_rate: 45)
@store1.employees.create(first_name: "Martha", last_name: "Vienna", hourly_rate: 200)

@store2.employees.create(first_name: "Seun", last_name: "Pizzle", hourly_rate: 300)
@store2.employees.create(first_name: "Sarah", last_name: "Peretti", hourly_rate: 250)
@store2.employees.create(first_name: "Vilfredo", last_name: "Bellucci", hourly_rate: 700)

