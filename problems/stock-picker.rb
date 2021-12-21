#  > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
def stock_picker(arr)
    result = []
    len = arr.size
    (0..len-1).each do |i|
        (i..len-1).each do |j|
            result.push(arr[j]-arr[i])
        end
    end

#find largest difference
diff = result.max { | a,b | a <=> b}
#find index of lagest diff
diff_index = 0
result.each_with_index do |x, i| 
    if x==diff
        diff_index = i
    next
    end
end

#find index of starting number
smallest = diff_index/arr.length
final_index = [smallest]

arr.each do |num|
    if (num - arr[smallest]) == 12
        final_index << arr.find_index(num)
    next
    end
end

return final_index

end

puts stock_picker([17,3,6,9,15,8,6,1,10])