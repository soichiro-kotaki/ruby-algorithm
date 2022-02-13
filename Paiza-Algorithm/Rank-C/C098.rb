input_line = readlines.map { |num| num.chomp }

#パス回しの参加人数
num_of_people = input_line[0].to_i
#パス回しに参加している各プレイヤーが所持しているボール数
num_of_balls_each_players = input_line.values_at(1..num_of_people).map { |num| num.to_i }
#パス回しの回数
num_of_passing = input_line[num_of_people + 1]
#パス回しの記録
passing_logs = input_line.values_at(num_of_people + 2..input_line.length - 1)

passing_logs.each do |passing_log|
    #1回毎のパス回しにおける、①ボールを渡す人 ②ボールを受け取る人 ③パスされるボールの数
    people_pass_ball, people_receive_ball, number_of_balls_to_pass = passing_log.split(' ').map { |num| num.to_i }

    #宣言した個数以上のボールを持っていない場合
    if num_of_balls_each_players[people_pass_ball - 1] < number_of_balls_to_pass
        num_of_balls_each_players[people_receive_ball - 1] = num_of_balls_each_players[people_receive_ball - 1] + num_of_balls_each_players[people_pass_ball - 1]
        num_of_balls_each_players[people_pass_ball - 1] = 0
    else
        num_of_balls_each_players[people_pass_ball - 1] = num_of_balls_each_players[people_pass_ball - 1] - number_of_balls_to_pass
        num_of_balls_each_players[people_receive_ball - 1] = num_of_balls_each_players[people_receive_ball - 1] + number_of_balls_to_pass
    end
end

puts num_of_balls_each_players
