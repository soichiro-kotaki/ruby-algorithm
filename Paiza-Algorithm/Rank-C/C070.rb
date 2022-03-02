# 手札によるポーカーの役職決め
class Poker
    def judge_poker_role(lines)
        card_in_hand_length = lines[0].to_i
        cards_in_hand = lines[1..-1]

        for num in 0...card_in_hand_length
            cards = cards_in_hand[num].split('').map(&:to_i)

            if cards.uniq.size == 1
                puts 'Four Card'
            elsif cards.uniq.size == 2 && cards.count(cards[1]) == 3
                puts 'Three Card'
            elsif cards.uniq.size == 2 && cards.count(cards[0]) == 2
                puts 'Two Pair'
            elsif cards.uniq.size == 3
                puts 'One Pair'
            else
                puts 'No Pair'
            end
        end
    end
end

Poker.new.judge_poker_role(readlines.map(&:chomp))
