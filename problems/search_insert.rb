#Note: nums array is sorted
def search_insert(nums, target)
  index = 0
  smaller = nums[0]
  nums.each.with_index do |_num, i|
    if target < nums[0]
      return index
    elsif target > nums[-1]
      return nums.length
    elsif target > nums[i]
      index += 1
    else
      return index
    end
  end
end

puts search_insert([1, 3, 5, 6], 7)
