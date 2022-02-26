# N枚のカードのスコア計算
class CardGame
    def calc_card_score(lines)
        num_of_card = lines[0].to_i
        number_card = lines[1].split(' ').map(&:to_i).sort
        total_point = 0

        for num in 0...number_card.size
            if number_card[num] + 1 == number_card[num + 1]
                next
            else
                total_point += number_card[num]
            end
        end

        puts total_point
    end
end

CardGame.new.calc_card_score(readlines.map(&:chomp))
