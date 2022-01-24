input_line = readlines
num_move = input_line[0].to_i
result = 0

for num in 1..num_move
    if num == 1
        result += (input_line[num].to_i - 1)
    else
        result += (input_line[num].to_i - input_line[num - 1].to_i).abs
    end
end

puts result
