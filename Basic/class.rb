#親クラス
class Fruits
    #コンストラクタ（インスタンスメソッド、インスタンス変数）
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

#子クラス（クラスの継承）
class Info < Fruits
    def show_price_detail
        puts "#{@name}の価格は#{@price}円です。"
    end

    #ポリモーフィズム（クラス継承時に親クラスのメソッドの挙動に関係なく、オーバーライドすることができる。)
    def calc_sales(price, quantity)
        price * quantity + 100
    end
end

apple = Fruits.new('りんご', 200, 30)
banana = Fruits.new('バナナ', 150, 50)
apple2 = Info.new('りんご', 100, 200)

puts apple.result
puts banana.result
puts apple2.show_price_detail
puts apple2.result
