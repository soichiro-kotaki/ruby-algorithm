#
class Sale
    def generate_sales_gragh(lines)
        data_length, data_unit = lines[0].split(' ').map(&:to_i)
        sales_data = lines[1..-1].map(&:to_i)
        max_value = sales_data.max
        width_of_graph = max_value / data_unit

        for num in 0...data_length
            scale = '*' * (sales_data[num] / data_unit)
            rest_scale = '.' * (width_of_graph - scale.length)

            puts "#{num + 1}:#{scale + rest_scale}"
        end
    end
end

Sale.new.generate_sales_gragh(readlines.map(&:chomp))
