require_relative 'lib/car'

puts
puts 'Enter info about car to purchase'
puts

print 'Make'
make = gets.chomp

print 'Year'
year = gets.chomp

print 'Color'
color = gets.chomp

car = Car.new(make: make, year: year, color: color)

puts
puts 'I understand you want to purchase: '
puts car.full_name.to_s
puts
