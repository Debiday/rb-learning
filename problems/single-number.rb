# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# You must implement a solution with a linear runtime complexity and use only constant extra space.

def single_number(nums)
  current = []
  repeated = []
  nums.each do |num|
    if !current.include? num
      current.append(num)
    else
      repeated.append(num)
    end
  end
  (current - repeated)[0]
end

p single_number([2, 2, 1, 3, 3]) # 1
p single_number([4, 1, 2, 1, 2]) # 4
