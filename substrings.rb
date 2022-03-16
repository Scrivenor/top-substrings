test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
test_word = "Howdy partner, sit down! How's it going?"
# test_word = "below"

def substrings( the_word, arr_dict )
  
  matches = Hash.new(0)
  
  the_word.downcase!
  arr_dict.map { |my_str| my_str.downcase }

  arr_dict.each do |word|
    if the_word.include?(word)
      matches[word] = the_word.scan(/#{word}/).count
    end
  end 
  matches
end

puts substrings( test_word, test_dictionary )