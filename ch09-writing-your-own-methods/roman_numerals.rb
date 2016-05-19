def roman_numeral num
    #roman_out = ""
    romanums.map.each do |div, roman| 
    	#puts num.divmod(div)
    	#puts roman
      mult, mod = num.divmod(div)
      #puts "mult: #{mult}" 
      #puts "mod: #{mod}"
    #mult.times do
     	#result << roman
     #	puts roman
     #end
      #num = mod
    end
    #puts roman_out
  end
 
 
  def romanums
    map = [
      [1000, "M"],
      [900, "CM"],
      [500, "D"],
      [400, "CD"],
      [100, "C"],
      [90, "XC"],
      [50, "L"],
      [40, "XL"],
      [10, "X"],
      [9, "IX"],
      [5, "V"],
      [4, "IV"],
      [1, "I"]
    ]

  end

puts roman_numeral 234