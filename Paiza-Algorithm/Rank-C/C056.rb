class GradingTest
    def grading_test(lines)
        num_of_people, qualifying_score = lines[0].split(' ').map(&:to_i)
        info_on_grades = lines[1..-1]
        score_list_for_each_student = []

        calculate_score_from_num_of_absences(num_of_people, info_on_grades, score_list_for_each_student)

        for num in 1..num_of_people
            puts num if score_list_for_each_student[num - 1] >= qualifying_score
        end
    end

    private

    def calculate_score_from_num_of_absences(num_of_people, info_on_grades, score_list_for_each_student)
        for num in 0...num_of_people
            score, num_of_absence = info_on_grades[num].split(' ').map(&:to_i)
            final_score = score - (num_of_absence * 5)
            final_score = 0 if final_score < 0

            score_list_for_each_student.push(final_score)
        end
    end
end

GradingTest.new.grading_test(readlines.map(&:chomp))
