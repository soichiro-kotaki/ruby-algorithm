# 1ヶ月間に溜まった合計ポイントを、購入日と購入金額から計算する
class CalcPoints
    def calculation_total_points(lines)
        num_of_receipts = lines[0].to_i
        purchase_info = lines[1..-1]
        total_point = 0
        day_of_3 = [3, 13, 23, 30]
        day_of_5 = [5, 15, 25]

        for num in 0...num_of_receipts
            purchase_day, purchase_price = purchase_info[num].split(' ').map(&:to_i)
            if day_of_3.include?(purchase_day)
                total_point += (purchase_price * 0.03).floor
            elsif day_of_5.include?(purchase_day)
                total_point += (purchase_price * 0.05).floor
            else
                total_point += (purchase_price * 0.01).floor
            end
        end

        puts total_point
    end
end

input_line = readlines.map(&:chomp)

calc_point = CalcPoints.new
calc_point.calculation_total_points(input_line)
