def bubble_sort(arr)
    length = arr.size

    return arr if length <= 1

    loop do
        sort = false

        (length - 1).times do |i|
        next unless arr[i] > arr[i + 1]

        arr[i], arr[i+ 1] = arr[i+ 1], arr[i]

        sort = true
        end
        break unless sort
    end
    arr
    end

puts bubble_sort([4,3,78,2,0,2])