class Fruits
    def initialize(name, price, quantity)
        @name = name
        @price = price
        @quantity = quantity
    end

    def result
        puts "#{@name}の売り上げは、#{calc_sales(@price, @quantity)}円でした。"
    end

    private

    def calc_sales(price, quantity)
        price * quantity
    end
end

class Info < Fruits
    def show_price_detail
        puts "#{@name}の価格は#{@price}円です。"
    end
end

apple = Fruits.new('りんご', 200, 30)
banana = Fruits.new('バナナ', 150, 50)
apple2 = Info.new('りんご', 100, 200)

puts apple.result
puts banana.result
puts apple2.show_price_detail
puts apple2.result
