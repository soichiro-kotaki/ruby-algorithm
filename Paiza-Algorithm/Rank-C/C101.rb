# ラッキーデイの計算
class LuckyDay
    def calc_lucky_days(input)
        num_of_lucky_day = 0

        for num in 0...365
            num_of_lucky_day += 1 if num.to_s.include?(input)
        end

        puts num_of_lucky_day
    end
end

LuckyDay.new.calc_lucky_days(gets.chomp)
