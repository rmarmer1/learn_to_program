def roman_to_integer roman

roman_arab = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 
							'd' => 500, 'm' => 1000}

arab_tot = 0
arab_prev = 0
arab = 0

	roman.reverse.each_char do |rome| 

		if !roman_arab.has_key?(rome.downcase)
 
 			puts 'This is not a valid roman numeral!'

			return
#
		end

		arab = roman_arab[rome.downcase]

		puts "cur arab: #{arab}"

		if arab < arab_prev
			puts "arab < arab_prev: #{arab} is < #{arab_prev}"
			arab = arab * -1

		else
			arab_prev = arab
			puts "arab_prev = arab: #{arab_prev}"
		end
		
		arab_tot += arab
		puts "arab_tot: #{arab_tot}"
	end
	arab_tot

#puts arab

end

puts roman_to_integer('mcmxcix')	# => 1999

#puts roman_to_integer('CCCLXV')		# => 365



# 365