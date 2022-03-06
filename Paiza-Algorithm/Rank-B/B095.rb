#カラオケ大会
class KaraokeScoring
    def calc_score_of_karaoke_by_Hz(lines)
        people_length, song_length = lines[0].split(' ').map(&:to_i)
        correct_pitch = lines[1..song_length].map(&:to_i)
        each_person_pitch = lines[song_length + 1..-1]
        result = []
        for num in 0...people_length
            score = 100
            person_pitch = each_person_pitch.slice(song_length * num, song_length).map(&:to_i)

            for n in 0...person_pitch.size
                pitch_errors_size = (person_pitch[n] - correct_pitch[n]).abs
                if pitch_errors_size > 5 && pitch_errors_size <= 10
                    score -= 1
                elsif pitch_errors_size >= 10 && pitch_errors_size <= 20
                    score -= 2
                elsif pitch_errors_size >= 20 && pitch_errors_size <= 30
                    score -= 3
                elsif pitch_errors_size > 30
                    score -= 5
                end
            end

            score < 0 && score = 0

            result.push(score)
        end

        puts result.sort.last
    end
end

KaraokeScoring.new.calc_score_of_karaoke_by_Hz(readlines(&:chomp))
