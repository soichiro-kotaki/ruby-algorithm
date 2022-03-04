# 先生の宿題準備
class HomeWork
    def calc_answer_of_question(line)
        array_of_formula = line.split(' ')

        if array_of_formula[1] == '+'
            if array_of_formula[4] == 'x'
                puts array_of_formula[0].to_i + array_of_formula[2].to_i
            elsif array_of_formula[0] == 'x'
                puts array_of_formula[4].to_i - array_of_formula[2].to_i
            else
                puts array_of_formula[4].to_i - array_of_formula[0].to_i
            end
        elsif array_of_formula[1] == '-'
            if array_of_formula[4] == 'x'
                puts array_of_formula[0].to_i - array_of_formula[2].to_i
            elsif array_of_formula[0] == 'x'
                puts array_of_formula[2].to_i + array_of_formula[4].to_i
            else
                puts array_of_formula[0].to_i - array_of_formula[4].to_i
            end
        end
    end
end

HomeWork.new.calc_answer_of_question(gets.chomp)
