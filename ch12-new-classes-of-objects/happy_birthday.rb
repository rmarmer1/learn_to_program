puts "When's your birthday?!?!?"

puts 'Enter the year were you born:'

year = gets.chomp.to_i

puts 'And what month was that? (in numbers: 1-12)'

month = gets.chomp.to_i

puts 'And which day of the month?'

day = gets.chomp.to_i

age = ((Time.now - Time.new(year,month,day)) / 31556926).to_i

# number of seconds in a year = 31556926

while age > 0

puts 'SPANK!'

age -= 1

end