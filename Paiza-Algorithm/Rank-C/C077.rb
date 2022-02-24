class ReportEvaluation
    def judge_exam(lines)
        k, n = lines[0].split(' ').map(&:to_i)
        results_of_students_exam = lines[1..-1]
        result = []

        for i in 0...k
            d_i, a_i = results_of_students_exam[i].split(' ').map(&:to_i)
            final_score = 0

            if d_i <= 0
                final_score = ((100 / n) * a_i).floor
            elsif d_i >= 1 && d_i <= 9
                final_score = ((100 / n) * a_i * 0.8).floor
            end

            evaluation_by_final_score(final_score, result)
        end

        puts result
    end

    private

    def evaluation_by_final_score(final_score, result)
        if final_score >= 80
            result.push('A')
        elsif final_score >= 70
            result.push('B')
        elsif final_score >= 60
            result.push('C')
        else
            result.push('D')
        end
    end
end

input_line = readlines.map(&:chomp)
ReportEvaluation.new.judge_exam(input_line)
