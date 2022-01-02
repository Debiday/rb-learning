#divide int.to_s into half, then compare
def is_palindrome(x)
    str_x = x.to_s
    halve_length = (str_x.length/2).ceil
    # round_halve = halve_length.ceil
    puts halve_length 
    if str_x.reverse[0..halve_length] == str_x[0..halve_length]
        return true
    else
        return false
    end
end

puts is_palindrome(121) #true
puts is_palindrome("321") #false
puts is_palindrome("1321") #false
puts is_palindrome("1221") #true