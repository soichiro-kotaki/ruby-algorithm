input_line = readlines.map { |num| num.chomp.to_i }
#ライブAの開催日数
num_of_live_days_for_band_A = input_line[0]
#ライブBの開催日数
num_of_live_days_for_band_B = input_line[num_of_live_days_for_band_A + 1]
#今月のライブAの開催日一覧
array_of_band_A_live_date = input_line[1, num_of_live_days_for_band_A]
#今月のライブBの開催日一覧
array_of_band_B_live_date = input_line[num_of_live_days_for_band_A + 1..-1]
#ライブAとライブBが被った場合に行くライブ
live_in_case_of_overlap = 'A'
#ライブが被った場合に該当日に行くことになるライブを判定するカウンター
count_in_case_of_overlap = 1
#今月のライブスケジュール
live_schedule = []

#1~31日までで、A,Bそれぞれのライブがあるかどうか判定。ある場合は、ライブスケジュールの配列に追加。
for num in 1..31
    #ライブの開催日が被っている場合
    if array_of_band_A_live_date.include?(num) && array_of_band_B_live_date.include?(num)
        live_schedule.push(live_in_case_of_overlap)
        count_in_case_of_overlap += 1
        count_in_case_of_overlap.odd? ? live_in_case_of_overlap = 'A' : live_in_case_of_overlap = 'B'

        #ライブAが該当する場合
    elsif array_of_band_A_live_date.include?(num)
        live_schedule.push('A')
        #ライブBが該当する場合
    elsif array_of_band_B_live_date.include?(num)
        live_schedule.push('B')
        #該当するライブがない場合
    else
        live_schedule.push('x')
    end
end

puts live_schedule
