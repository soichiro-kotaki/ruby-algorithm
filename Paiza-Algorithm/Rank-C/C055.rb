input_line = readlines.map { |n| n.chomp }
result = []

for num in 1..input_line[0].to_i
    if input_line[num + 1].include?("#{input_line[1]}")
        result.push(input_line[num + 1])
    end
end

result == [] && result.push('None')

puts result
