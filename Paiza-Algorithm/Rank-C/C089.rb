input_line = readlines.map { |str| str.chomp }
height_of_panel, width_of_panel = input_line[0].split(' ').map { |num| num.to_i }
results_of_shooting = input_line[1, height_of_panel].join('').split('')
scores_for_each_panel = []
input_line[height_of_panel + 1..-1].each { |num| num.split(' ').each { |n| scores_for_each_panel.push(n.to_i) } }
total_point = 0

for num in 0..scores_for_each_panel.size
    results_of_shooting[num] == 'o' && total_point += scores_for_each_panel[num]
end

puts total_point
