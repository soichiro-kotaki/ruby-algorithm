# カードの合計
class Card
    def calc_total_card_points(lines)
        card_length = lines[0].to_i
        point_on_each_cards = lines[1].split(' ')
        total_points = 0
        is_contained_x10 = point_on_each_cards.include?('x10')

        is_contained_x10 && point_on_each_cards.delete(is_contained_x10)

        sorted_point_on_each_cards = point_on_each_cards.map(&:to_i).sort

        sorted_point_on_each_cards.include?('0') && sorted_point_on_each_cards.pop

        if is_contained_x10
            puts sorted_point_on_each_cards.sum * 10
        else
            puts sorted_point_on_each_cards.sum
        end
    end
end

Card.new.calc_total_card_points(readlines.map(&:chomp))
