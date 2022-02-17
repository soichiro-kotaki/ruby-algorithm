phone_num = gets.chomp.gsub!('-', '').split('').map { |str| str.to_i }
#黒電話の各番号とフックまでの距離
distance_to_each_number_and_hook = { '0': 12, '1': 3, '2': 4, '3': 5, '4': 6, '5': 7, '6': 8, '7': 9, '8': 10, '9': 11 }
#電話番号をダイヤルした場合の合計距離
total_distance = 0

phone_num.each { |num| total_distance += distance_to_each_number_and_hook[:"#{num}"] * 2 }

puts total_distance
