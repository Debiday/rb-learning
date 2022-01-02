def two_sum(nums, target)
  checked = {}
  nums.each.with_index do |num, i|
    diff = target - num
    if checked[diff]
      return [checked[diff], i]
    else
      checked[num] = i
    end
  end
end

p two_sum([3, 2, 4], 6)
p two_sum([2, 7, 11, 15], 9)
p two_sum([3, 3], 6)
