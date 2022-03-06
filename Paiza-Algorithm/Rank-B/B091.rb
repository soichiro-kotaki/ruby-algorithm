# 山頂を探せ
class FindSummit
    def find_summit_lattice(lines)
        lattice_length = lines[0].to_i
        height_of_all_mountains = lines[1..-1].join(' ').split(' ').map(&:to_i)
        summit_of_mountains = []

        for num in 0...height_of_all_mountains.size
            upper_height = num - lattice_length > 0 ? height_of_all_mountains[num - lattice_length] : 0
            lower_height = num + lattice_length > 0 ? height_of_all_mountains[num + lattice_length] : 0
            left_height = num == 0 || num % lattice_length == 0 ? 0 : height_of_all_mountains[num - 1]
            right_height = num + 1 % lattice_length == 0 ? 0 : height_of_all_mountains[num + 1]

            array = [upper_height, lower_height, left_height, right_height]
            is_higher = array.compact.filter { |elm| elm >= height_of_all_mountains[num] }

            summit_of_mountains.push(height_of_all_mountains[num]) if is_higher == []
        end

        summit_of_mountains.sort.reverse.each { |ans| puts "#{ans}\n" }
    end
end

FindSummit.new.find_summit_lattice(readlines.map(&:chomp))
