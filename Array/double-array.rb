# 2次元の配列を作って出力する

### 2次元配列を作成
def make2d(x, y)
    a = Array.new(x)
    for i in 0..x - 1
        a[i] = Array.new(y)
    end
    return a
end

### 2次元の配列の全ての要素に値を代入する
a = make2d(3, 4)
for row in 0..2
    for col in 0..3
        a[row][col] = row.to_s + '行' + col.to_s + '列'
    end
end

items_price = [
    ['pen', [100, 200, 120]],
    ['book', [120, 150, 220]],
    ['pen_case', [1000, 1500]],
]

### 二次元配列の中身を参照して処理を行うには、eachメソッドを2回行う
items_price.each do |item|
    sum_price = 0
    item[1].each { |price| sum_price += price }
    puts "#{item[0]}の合計値は、#{sum_price}円です。"
end
