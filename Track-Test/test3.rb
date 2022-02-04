# 実装途中

$terminal_station = {
    A: [
        {
            departure_station: 'A1',
            first_train_time: '05:55',
            time_intervals: 5,
        },
        {
            departure_station: 'A7',
            first_train_time: '06:06',
            time_intervals: 10,
        },
        {
            departure_station: 'A13',
            first_train_time: '05:52',
            time_intervals: 10,
        },
    ],
    B: [
        {
            departure_station: 'B1',
            first_train_time: '06:00',
            time_intervals: 6,
        },
        {
            departure_station: 'A7',
            first_train_time: '06:11',
            time_intervals: 6,
        },
    ],
}

$travel_time_table = [
    { station_name: 'A1', travel_time_on_direction: [{ U: 3 }, { D: 0 }] },
    { station_name: 'A2', travel_time_on_direction: [{ U: 5 }, { D: 3 }] },
    { station_name: 'A3', travel_time_on_direction: [{ U: 2 }, { D: 5 }] },
    { station_name: 'A4', travel_time_on_direction: [{ U: 3 }, { D: 2 }] },
    { station_name: 'A5', travel_time_on_direction: [{ U: 4 }, { D: 3 }] },
    { station_name: 'A6', travel_time_on_direction: [{ U: 3 }, { D: 4 }] },
    { station_name: 'A7', travel_time_on_direction: [{ U: 4 }, { D: 3 }] },
    { station_name: 'A8', travel_time_on_direction: [{ U: 2 }, { D: 4 }] },
    { station_name: 'A9', travel_time_on_direction: [{ U: 2 }, { D: 2 }] },
    { station_name: 'A10', travel_time_on_direction: [{ U: 3 }, { D: 2 }] },
    { station_name: 'A11', travel_time_on_direction: [{ U: 6 }, { D: 3 }] },
    { station_name: 'A12', travel_time_on_direction: [{ U: 2 }, { D: 6 }] },
    { station_name: 'A13', travel_time_on_direction: [{ U: 0 }, { D: 2 }] },
    { station_name: 'B1', travel_time_on_direction: [{ U: 4 }, { D: 0 }] },
    { station_name: 'B2', travel_time_on_direction: [{ U: 3 }, { D: 4 }] },
    { station_name: 'B3', travel_time_on_direction: [{ U: 3 }, { D: 3 }] },
    { station_name: 'B4', travel_time_on_direction: [{ U: 2 }, { D: 3 }] },
    { station_name: 'B5', travel_time_on_direction: [{ U: 3 }, { D: 2 }] },
]

def main(lines)
    result = []
    line_name, station_name, direction, time = lines[0].split(' ')

    # 入力された駅の上り下りそれぞれの隣駅までの移動時間をハッシュから取得
    applicable_station_info = $travel_time_table.find do { |element|
        element[:station_name] == station_name }
    end

    # 乗車時刻、路線、方向、乗車駅に応じた、乗車可能な電車時刻の計算
    if line_name == 'A'
        if direction == 'U' && $travel_time_table.index(applicable_station_info) < 6
            station_num = $travel_time_table[0, $travel_time_table.index(applicable_station_info) - 1]

        elsif direction == 'U' && $travel_time_table.index(applicable_station_info) >= 6

        elsif direction == 'D' && $travel_time_table.index(applicable_station_info) < 6

        elsif direction == 'D' && $travel_time_table.index(applicable_station_info) < 6

        end
    elsif line_name == 'B'
        if direction == 'U' &&

        elsif direction == 'D' && $travel_time_table.index(applicable_station_info) == 6
    end


    # 条件に該当する電車が存在しない場合、"No train"を出力。電車がある場合は時刻とその時間帯の時刻表を出力
    if result == []
        puts "No train"
    else
        puts "#{time}: #{result}"
    end
end

main(readlines)
