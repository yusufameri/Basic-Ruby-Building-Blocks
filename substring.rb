def substring string, dictionary
  hash = {}
  string = (string.downcase).split ' '
  dictionary.each do |each_dict_word|
    string.each do |each_string|
      if each_string.include? each_dict_word
        if hash.include? each_dict_word
          hash[each_dict_word] = hash[each_dict_word] + 1
        else
          hash[each_dict_word] = 1
        end
      end
    end
  end
  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

puts substring word, dictionary