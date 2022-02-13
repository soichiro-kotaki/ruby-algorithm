input_line = readlines.map { |num| num.chomp }
result = []
for num in 1..input_line[1].to_i
    is_included = input_line[num + 1].include?(input_line[0])
    result.push(input_line[num + 1].to_i) if !is_included
end

result == [] && result.push('none')

puts result
