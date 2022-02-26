# 試験の合格判定
class Test
    def judge_test_by_two_stage_selection(lines)
        num_of_people = lines[0].to_i
        student_exam_information = lines[1..-1]
        num_of_passengers = 0

        for num in 0...student_exam_information.size
            art_or_science = student_exam_information[num].split(' ')[0]
            total_point = student_exam_information[num].split(' ').map(&:to_i).sum
            e_score, m_score, s_score, j_score, g_score = student_exam_information[num].split(' ')[1..-1].map(&:to_i)

            if total_point >= 350
                if art_or_science == 'l'
                    j_score + g_score >= 160 && num_of_passengers += 1
                elsif art_or_science == 's'
                    m_score + s_score >= 160 && num_of_passengers += 1
                end
            end
        end

        puts num_of_passengers
    end
end

Test.new.judge_test_by_two_stage_selection(readlines.map(&:chomp))
