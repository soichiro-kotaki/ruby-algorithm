class GetDays
    attr_reader :num_of_days

    def initialize(num_of_days)
        @num_of_days = num_of_days
    end
end

class DivideSharePriceOnEachDay
    def initialize(share_price_on_all_days)
        @share_price_on_all_days = share_price_on_all_days
    end

    def convert_into_intger
        @share_price_on_all_days.map { |share_price_on_each_day| share_price_on_each_day.split(' ').each { |share_price| share_price.to_i } }
    end
end

class OpeningPrice
    def get_opening_price(share_price_on_first_day)
        opening_price = share_price_on_first_day[0]
    end
end

class ClosingPrice
    def get_closing_price(share_price_on_last_day)
        closing_price = share_price_on_last_day[1]
    end
end

class HighgPrice
    def get_highg_price(share_price_on_all_days)
        array_of_high_price_on_each_days = []
        share_price_on_all_days.each { |share_price_on_each_days| array_of_high_price_on_each_days.push(share_price_on_each_days[2]) }
        high_price = array_of_high_price_on_each_days.uniq.sort.max
    end
end

class LowPrice
    def get_low_price(share_price_on_all_days)
        array_of_low_price_on_each_days = []
        share_price_on_all_days.each { |share_price_on_each_days| array_of_low_price_on_each_days.push(share_price_on_each_days[3]) }
        sorted_array_of_low_price_on_each_days = array_of_low_price_on_each_days.sort { |a, b| a.to_i <=> b.to_i }
        low_price = sorted_array_of_low_price_on_each_days[0]
    end
end

input_line = readlines.map { |num| num.chomp }

num_of_days = GetDays.new(input_line[0].to_i)
share_price_on_each_day = DivideSharePriceOnEachDay.new(input_line[1..-1])
share_price_on_each_day_intger = share_price_on_each_day.convert_into_intger
opening_price = OpeningPrice.new.get_opening_price(share_price_on_each_day_intger[0])
closing_price = ClosingPrice.new.get_closing_price(share_price_on_each_day_intger[num_of_days.num_of_days - 1])
high_price = HighgPrice.new.get_highg_price(share_price_on_each_day_intger)
low_price = LowPrice.new.get_low_price(share_price_on_each_day_intger)

puts "#{opening_price} #{closing_price} #{high_price} #{low_price}"
