# コーヒーのタダ飲み
class FreeCoffee
    def calc_charge_until_free_coffee(line)
        total_charge = 0
        current_price = line[0]
        discount_rate = line[1]

        while current_price > 0
            total_charge += current_price
            current_price = (current_price - current_price * (discount_rate * 0.01)).floor
        end

        puts total_charge
    end
end

FreeCoffee.new.calc_charge_until_free_coffee(gets.split(' ').map(&:to_i))
