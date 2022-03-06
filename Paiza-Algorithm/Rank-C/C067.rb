# 数字の計算
class CalclateNumber
    def calc_number(lines)
        digit_number_length, decimal_number = lines[0].split(' ').map(&:to_i)
        array_of_binary_number = decimal_number.to_s(2).split('')
        array_of_digit = lines[1..-1].map(&:to_i)

        for num in 0...digit_number_length
            number_index = array_of_binary_number.size - array_of_digit[num]
            puts array_of_binary_number[number_index]
        end
    end
end

CalclateNumber.new.calc_number(readlines.map(&:chomp))
