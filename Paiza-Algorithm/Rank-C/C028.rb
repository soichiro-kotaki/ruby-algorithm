# 単語テストの採点
class WordTest
    def grade_word_test(lines)
        question_length = lines[0].to_i
        total_points = 0

        for num in 1..question_length
            correct_answer, student_answer = lines[num].split(' ')
            array_correct_answer = correct_answer.split('')
            array_student_answer = student_answer.split('')
            is_incorrected_one_word = (array_correct_answer - array_student_answer).size == 1

            if correct_answer.eql?(student_answer)
                total_points += 2
            elsif is_incorrected_one_word
                total_points += 1
            end
        end

        puts total_points
    end
end

WordTest.new.grade_word_test(readlines.map(&:chomp))
