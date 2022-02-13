input_line = readlines

parent_card_nums = input_line[0].split(' ')
children_card_array = input_line[2, input_line[1].to_i + 2]
result = []

for num in 1..input_line[1].to_i
    children_card_nums = children_card_array[num - 1].split(' ')

    if parent_card_nums[0].to_i > children_card_nums[0].to_i
        result.push('High')
    elsif parent_card_nums[0] == children_card_nums[0] && parent_card_nums[1].to_i < children_card_nums[1].to_i
        result.push('High')
    else
        result.push('Low')
    end
end

puts result
