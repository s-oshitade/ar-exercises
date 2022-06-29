require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: "Yaletown", annual_revenue: 43000, mens_apparel: true, womens_apparel: false)

puts "The number of stores is: #{Store.count}" 

@mens_stores = Store.where(mens_apparel: true)
puts "The count of men's stores is: #{@mens_stores.count}"

@mens_stores.each do |mens_store|
  puts "#{mens_store.name} generates $#{mens_store.annual_revenue} per annum."
end

@womens_stores_less_than_million = Store.where("womens_apparel = ?", true).where("annual_revenue < ?", 1000000)

puts @womens_stores_less_than_million.count
