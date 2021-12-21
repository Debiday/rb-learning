def caesar_cipher(str, shift)
  alpha_table = {}

  #create alphabet hash table
  alphabet = ("a".."z").to_a
  order = (1..26).to_a
  alpha_table[" "] = 0

  (alphabet.zip(order)).each { |x| alpha_table[x[0]] = x[1] }
  letters = str.downcase.split("")

  #convert each letter into number
  #if letter is an alphabet then add shift else push letter to to_num array
  to_num = []
  letters.each { |letter| letter.match?(/[a-zA-Z]/) ? to_num << alpha_table[letter].to_i + shift : to_num << letter }

  #   #if letter is not 0 or smaller than 26, calc from start of index
  to_new_num = []
  to_num.each do |num|
    if !num.is_a? Numeric
      to_new_num << num
    elsif num < 26
      to_new_num << num
    else
      to_new_num << num - 26
    end
  end

  #replace each num with char and join()
  final_str = []
  to_new_num.each do |new_num|
    if new_num.is_a? Numeric
      final_str << alpha_table.key(new_num)
    else
      final_str << new_num
    end
  end

  #create a log of the characters in upcase (index)
  uppercase_index = []
  str.split("").each.with_index do |x, index|
    if x.match?(/[A-Z]/)
      uppercase_index << index
      next
    end
  end

  #go through final_str changing index if any in uppercase_index to upcase
  final_str.each.with_index do |char, index|
    uppercase_index.each { |num| final_str[num] = final_str[num].upcase }
  end
  return final_str.join
end

puts caesar_cipher("a Z F", 2)
puts caesar_cipher("Hello there!", 5)
