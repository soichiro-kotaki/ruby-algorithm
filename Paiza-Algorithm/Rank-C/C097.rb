input_line = gets.chomp.split(' ')
win_num1 = input_line[1].to_i
win_num2 = input_line[2].to_i

result = []
for num in 1..input_line[0].to_i
    if num % win_num1 == 0 && num % win_num2 == 0
        result.push('AB')
    elsif num % win_num1 == 0 && num % win_num2 != 0
        result.push('A')
    elsif num % win_num2 == 0 && num % win_num1 != 0
        result.push('B')
    else
        result.push('N')
    end
end

puts result
