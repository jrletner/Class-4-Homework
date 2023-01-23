puts "Please enter something."
text = gets.chomp

# split the user's text into individual words
words = text.split

# create a new hash
frequencies = Hash.new(0)

# add each word to the hash array and count the number of times
# the word occurs
words.each { |word| frequencies[word] += 1 }

# display the hash
puts frequencies
