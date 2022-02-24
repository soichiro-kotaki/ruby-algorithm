class CompeteTestScores
    def compare_with_last_digit_rule(line)
        bob_score = line[0].split('').map(&:to_i).sum
        alice_score = line[1].split('').map(&:to_i).sum

        bob_num_of_first_places = bob_score.to_s.split('').last
        alice_num_of_first_places = alice_score.to_s.split('').last

        if bob_num_of_first_places < alice_num_of_first_places
            puts 'Alice'
        elsif bob_num_of_first_places > alice_num_of_first_places
            puts 'Bob'
        else
            puts 'Draw'
        end
    end
end

CompeteTestScores.new.compare_with_last_digit_rule(gets.split(' '))
