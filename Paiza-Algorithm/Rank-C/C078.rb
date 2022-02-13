input_line = readlines
num_of_days, lower_price, upper_price =
    input_line[0].split(' ').map { |num| num.to_i }

# 上から、暫定の利益、持株数、最終損益
current_profit = 0
num_of_shares = 0
final_profit = 0

for num in 1..num_of_days
    if num_of_days == num
        final_profit +=
            input_line[num_of_days].to_i * num_of_shares + current_profit
    elsif input_line[num].to_i <= lower_price
        current_profit += -(input_line[num].to_i)
        num_of_shares += 1
    elsif input_line[num].to_i >= upper_price
        final_profit += num_of_shares * input_line[num].to_i + current_profit
        stock = 0
        num_of_shares = 0
    end
end

puts final_profit
