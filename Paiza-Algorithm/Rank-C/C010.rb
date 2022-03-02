# 工事の音が邪魔にならない、読書に適した場所を探す
class SerachLocation
    def is_good_place_to_read(lines)
        construction_x, construction_y, noise_distance = lines[0].split(' ').map(&:to_i)
        tree_shadows_length = lines[1].to_i
        coordinates_of_trees_shadows = lines[2..-1]

        for num in 0...tree_shadows_length
            tree_shadows_x , tree_shadows_y = coordinates_of_trees_shadows[num].split(' ').map(&:to_i)
            judgement_result = (tree_shadows_x  - construction_x)**2 + (tree_shadows_y - construction_y)**2 >= noise_distance**2

            judgement_result ? puts 'silent' : 'noisy'
        end
    end
end

SerachLocation.new.is_good_place_to_read(readlines.map(&:chomp))
