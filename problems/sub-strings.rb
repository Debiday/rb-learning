dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#find out how many s words, and s sub-words appear in the dictionary 

#get string combinations
def substrings(s, dict)
    result = []
    chars = s.downcase.split("")
    len = chars.size
    (0..len-1).each do |i|
        (i..len-1).each do |j|
        result.push(chars[i..j].join)
        end
    end
    result.uniq

    # puts result

    #find how many of these words occur in the array and how many times
    tally = {}
    result.each do |word|
        if dict.include? word and tally.include? word
            tally[word] += 1
        elsif dict.include? word
            tally[word] = 1
        end
    end
    return tally
end

puts substrings("belowLOW", dict)