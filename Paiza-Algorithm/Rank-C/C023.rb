input_line = readlines.map { |num| num.chomp.split(' ').map { |n| n.to_i } }

#くじの当選番号
win_nums_array = input_line[0]
#くじの購入数
num_of_lots = input_line[1]
#各くじの当選番号数
result = []

for num in 1..num_of_lots[0]
    count = input_line[num + 1].filter { |lotter_num| win_nums_array.find { |num| num == lotter_num } }

    result.push(count.length)
end

puts result
