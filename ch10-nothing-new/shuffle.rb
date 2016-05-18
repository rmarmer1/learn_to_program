#myArray = (1..9).to_a

#myArray.sample(9)
myArray = [1,2,3,4,5,6,7,8,9]
myLen = myArray.length
#puts myArray

# this works, but not if the array itself is passed in... ?!?!?!?

def shuffle(length, array)
  
  array.to_a.sample(length)

end
#
puts shuffle myLen, myArray