#myArray = (1..9).to_a

#myArray.sample(9)
#myArray = [1,2,3,4,5,6,7,8,9]

#puts myArray

# this works, but not if the array itself is passed in... ?!?!?!?

def shuffle(range)
  
  range.to_a.sample(9)

end
#
shuffle(1..9)