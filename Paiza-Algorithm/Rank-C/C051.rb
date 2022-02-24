input_line = gets.split(' ').permutation.to_a
max_value_of_sum = 0

input_line.each do |line|
    num1 = line[0, 2].join('').to_i
    num2 = line[2, 4].join('').to_i
    sum = num1 + num2

    max_value_of_sum < sum && max_value_of_sum = sum
end

puts max_value_of_sum
