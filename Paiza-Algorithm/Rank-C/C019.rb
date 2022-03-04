# 完全数とほぼ完全数
class PerfectNumber
    def is_perfect_number(lines)
        number_length = lines[0].to_i
        numbers = lines[1..-1].map(&:to_i)

        for num in 0...number_length
            all_divisors = []

            for n in 1..numbers[num]
                all_divisors.push(n) if numbers[num] % n == 0
            end

            divisors_except_max_value = all_divisors[0, all_divisors.size - 1]
            sum_of_divisors_except_max_value = divisors_except_max_value.sum

            if sum_of_divisors_except_max_value == numbers[num]
                puts 'perfect'
            elsif (numbers[num] - sum_of_divisors_except_max_value).abs == 1
                puts 'nearly'
            else
                puts 'neither'
            end
        end
    end
end

PerfectNumber.new.is_perfect_number(readlines.map(&:chomp))
