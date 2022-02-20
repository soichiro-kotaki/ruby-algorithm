input_line = nput_line = readlines.map { |str| str.chomp }
num_of_lights = input_line[0].to_i
location = input_line[1].split(' ').map { |num| num.to_i }
light_on = input_line[2..-1]
result = []

a = [%w[R Y M W], %w[G Y C W], %w[B M C W]]

for num in 1..num_of_lights
    direction, color = light_on[num - 1].split(' ')

    if direction == 'R'
        for n in 1..3
            a[n - 1].include?(color) && location[n - 1] = location[n - 1] + 1
        end
    elsif direction == 'L'
        for n in 1..3
            a[n - 1].include?(color) && location[n - 1] = location[n - 1] - 1
        end
    end

    if location.all? { |number| number == location[0] }
        result.push(location[0])
        puts result
        return
    end
end

result == [] && result.push('no')

puts result
