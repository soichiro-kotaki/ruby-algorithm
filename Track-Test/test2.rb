def main(lines)
    $num_of_all_children = lines[0].to_i
    $array_of_positive_integer = lines[1].split(' ')
    $array_of_said_num = []
    ans = nil

    for num in 0...$num_of_all_children
        break if ans

        # 言い終わった数の中にnum番目の子供が言った数があるかを判定
        is_duplicated =
            $array_of_said_num.include?($array_of_positive_integer[num].to_i)

        # 該当する数がない場合もしくは最初に言われた数の場合は、言い終わった数の配列に格納する
        if $array_of_said_num === [] || !is_duplicated
            $array_of_said_num.push($array_of_positive_integer[num].to_i)
        else
            ans = num + 1
        end
    end

    # 誰も負けずに終わった場合に、ansに-1を代入して出力
    !ans && ans = -1

    puts ans
end

main(readlines)
