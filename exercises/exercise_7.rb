require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please enter new store name"
print"> "

new_store_name = $stdin.gets.chomp

@new_store = Store.create(name: new_store_name)

if @new_store.errors
  @new_store.errors.full_messages.each do |error|
    pp error
  end
end