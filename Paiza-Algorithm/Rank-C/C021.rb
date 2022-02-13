input_line = readlines.map { |str| str.chomp }
#①x軸、②y軸の中心座標、③小さい円の半径、④大きい円の半径
x_coordinate_of_centre, y_coordinate_of_centre, radius_of_smaller_circle, radius_of_larger_circle = input_line[0].split(' ').map { |str| str.to_i }
result = []

for num in 1..input_line[1].to_i
    x_coordinate, y_coordinate = input_line[num + 1].split(' ').map { |str| str.to_i }
    calc_result = (x_coordinate_of_centre - x_coordinate)**2 + (y_coordinate_of_centre - y_coordinate)**2

    #小さい円の2乗 =< calc_result =< 大きい円の2乗
    is_in_stream_zone = radius_of_smaller_circle**2 <= calc_result && calc_result <= radius_of_larger_circle**2
    is_in_stream_zone ? result.push('yes') : result.push('no')
end

puts result
