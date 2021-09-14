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

puts ">>> ENTER A STORE NAME <<<"
print ">>> "
user_new = gets.chomp
@add_store  = Store.create(name: user_new)

#PRINT ERRORS: 
puts ">>> ERROR (Add products): #{@add_store.errors[:min_product]}"
puts ">>> ERROR (Annual Revenue): #{@add_store.errors[:annual_revenue]}"

#CHECK TOTAL STORES:
@total_stores   = Store.count
puts ">>>Total stores in db: #{@total_stores}"