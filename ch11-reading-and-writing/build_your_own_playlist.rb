
m4as = Dir['/Users/admin/Downloads/Precourse/TakeOne/*.m4a']
puts m4as
m4as = m4as.sample(m4as.length)
File.open 'playlist.m4a', 'w' do |f|

m4as.each do |m4a|

f.write m4a +"\n"

end

end

puts 'Done!'# your code here