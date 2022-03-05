# 壊れかけのキーボード
class KeyBoard
    def calc_alphabet_shown_display(lines)
        durability_on_each_alphabet_keyboard = lines[0].split(' ').map(&:to_i)
        entered_alphabet = lines[1].split('')
        array_of_alphabet = [*'a'..'z']
        output_on_display = ''

        for num in 0...entered_alphabet.size
            alphabet_index = array_of_alphabet.find_index(entered_alphabet[num])
            if durability_on_each_alphabet_keyboard[alphabet_index] > 0
                output_on_display += entered_alphabet[num]
                durability_on_each_alphabet_keyboard[alphabet_index] -= 1
            end
        end

        puts output_on_display
    end
end

KeyBoard.new.calc_alphabet_shown_display(readlines.map(&:chomp))
