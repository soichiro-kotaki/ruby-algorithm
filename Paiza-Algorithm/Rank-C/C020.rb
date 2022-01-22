input_line = gets
nums = input_line.split(' ')

result = nums[0].to_i - (nums[0].to_i * nums[1].to_i.to_f / 100)
answer = result - (result * (nums[2].to_i.to_f / 100))

puts answer
