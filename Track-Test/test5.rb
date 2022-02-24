def calc_people_attending_after_party(lines)
    num_of_sushi, num_of_participants, max_num_of_to_eat = lines.split(' ').map { |num| num.to_i }
    people_attending_after_party = 0

    num_of_sushi = num_of_sushi % max_num_of_to_eat + max_num_of_to_eat
    num_of_participants = num_of_participants - (num_of_sushi / max_num_of_to_eat - 1)
    puts num_of_participants
    num_of_sushi % num_of_participants == 0 && people_attending_after_party = num_of_participants

    puts people_attending_after_party
end

calc_people_attending_after_party(gets.chomp)
