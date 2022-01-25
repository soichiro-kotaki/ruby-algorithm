input_line = readlines
sheets_num = input_line[0].split(' ')[0].to_i
sheets_length = input_line[0].split(' ')[1].to_i
total_length = sheets_length

for num in 1..sheets_num - 1
    total_length += (sheets_length - input_line[num].to_i)
end

print sheets_length * total_length
