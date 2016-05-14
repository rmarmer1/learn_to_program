def sort words

recursive_sort words, []

end

def recursive_sort words, sorted

	yet_to_sort = []

	sorted.length.upto(words.length) do

		word_a = words.pop

		words.each do |word_b|

			if word_b < word_a  

				yet_to_sort << word_a

				word_a = word_b

			else

				yet_to_sort << word_b
			end
		end
		sorted << word_a

	recursive_sort yet_to_sort, sorted
end
puts sorted
end

puts sort(['rubber','baby','buggy','bumpers'])