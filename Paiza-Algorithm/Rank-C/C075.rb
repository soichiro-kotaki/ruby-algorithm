input_line = readlines
point = 0
card_rest, ride_nums = input_line[0].split(' ').map { |n| n.to_i }
result = []

for num in 1..ride_nums
    ride_fees = input_line[num].to_i
    if ride_fees <= card_rest && point <= ride_fees
        card_rest -= ride_fees
        point += ride_fees / 10
        result.push("#{card_rest} #{point}")
    else
        point -= ride_fees
        result.push("#{card_rest} #{point}")
    end
end

puts result
