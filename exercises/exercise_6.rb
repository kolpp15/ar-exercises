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
@store1.employees.create(first_name: "aaa", last_name: "bbbb", hourly_rate: 10)
@store1.employees.create(first_name: "bbb", last_name: "cccc", hourly_rate: 20)
@store1.employees.create(first_name: "ccc", last_name: "dddd", hourly_rate: 30)
@store1.employees.create(first_name: "ddd", last_name: "eeee", hourly_rate: 40)
@store2.employees.create(first_name: "eee", last_name: "ffff", hourly_rate: 100)
@store2.employees.create(first_name: "fff", last_name: "gggg", hourly_rate: 200)
@store2.employees.create(first_name: "ggg", last_name: "hhhh", hourly_rate: 300)
@store2.employees.create(first_name: "hhh", last_name: "iiii", hourly_rate: 400)
@store2.employees.create(first_name: "iii", last_name: "jjjj", hourly_rate: 500)

puts ">>>Total Burnaby Employees: #{@store1.employees.count}"
puts ">>>Total Richmond Employees: #{@store2.employees.count}"