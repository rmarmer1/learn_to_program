names_bdays = {}

name = ""
mth_day = ""
year = ""


File.readlines('names.txt').each do |line|
	name, mth_day, year = line.split(",")
end

names_bdays[name] = "#{mth_day}, #{year}"
#puts names_bdays

puts 'Enter a name & I\'ll give you their birthday...'

thename = gets.chomp

puts names_bdays[thename]