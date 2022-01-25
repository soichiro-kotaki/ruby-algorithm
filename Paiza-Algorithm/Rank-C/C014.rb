input_line = readlines
box_nums, ball_raduis = input_line[0].split(' ').map { |n| n.to_i }
result = []

for num in 1..box_nums.to_i
    box_lengths = input_line[num].split(' ')
    is_stored = box_lengths.all? { |length| length.to_i >= ball_raduis * 2 }
    is_stored ? result.push(num) : ''
end

puts result
