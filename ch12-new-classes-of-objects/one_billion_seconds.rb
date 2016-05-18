seconds_alive = Time.now - Time.new(1956,11,28,0,0,0)

puts seconds_alive.to_i
# number of seconds in a year = 31556926
age_at_1B_secs = (seconds_alive.to_i - 1000000000) / 31556926

puts "At plus 1 billion seconds, I was age #{age_at_1B_secs}"