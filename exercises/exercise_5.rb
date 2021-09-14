require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_rev      = Store.sum(:annual_revenue)
@total_stores   = Store.count
@store_over_mil = Store.where("annual_revenue > ?", 1000000).count

puts ">>>Total revenue for all stores: $#{@total_rev}"
puts ">>>Average Annual Revenue for all stores: $#{@total_rev / @total_stores}"
puts ">>>Total stores making over $1M: #{@store_over_mil}"
