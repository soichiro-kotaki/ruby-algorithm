def main(lines)
    num_of_all_candies, num_of_children_begin, num_of_children_late =
        lines[0].split(' ').map { |str| str.to_i }

    # A個の飴を。B人に配った後の残りの数をrest_candiesで取得
    rest_candies = num_of_all_candies % num_of_children_begin

    # B人の子供たちから1個ずつ回収した後の飴の残りの数を計算
    rest_candies += num_of_children_begin

    # 残りの飴の数でC人に同数で配れる最大数を計算
    answer = rest_candies / num_of_children_late

    puts answer
end

main(readlines)
