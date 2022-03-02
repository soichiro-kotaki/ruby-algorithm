input_line = readlines.map { |num| num.chomp }
result = []
for num in 2..input_line[1].to_i
    is_included = input_line[num].include?(input_line[0])
    result.push(input_line[num].to_i) if !is_included
end

result == [] && result.push('none')

puts result
