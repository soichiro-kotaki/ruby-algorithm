input_line = readlines
sheets_num, sheets_length = input_line[0].split(' ').map { |n| n.to_i }
total_length = sheets_length

for num in 1...sheets_num
    total_length += (sheets_length - input_line[num].to_i)
end

print sheets_length * total_length
