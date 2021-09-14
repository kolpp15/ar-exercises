require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


@mens_stores = Store.where(mens_apparel: true)
puts "---------------Mens Apparel Stores------------------------------------"
@mens_stores.each do |store|
  puts ">>>Store name: #{store.name} || Annual Revenue: #{store.annual_revenue}"
end


@womens_rev_one_mil = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
puts "---------------Womens Apparel Stores Under $1M Rev--------------------"
@womens_rev_one_mil.each do |store|
  puts ">>>Store name: #{store.name} || Annual Revenue: #{store.annual_revenue}"
end
