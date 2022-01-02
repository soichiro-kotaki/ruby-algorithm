# 2次元の配列を作って出力する

# 2次元配列を作成
def make2d(x, y)
    a = Array.new(x)
    for i in 0..x - 1
        a[i] = Array.new(y)
    end
    return a
end

# 2次元の配列の全ての要素に値を代入する
a = make2d(3, 4)
for row in 0..2
    for col in 0..3
        a[row][col] = row.to_s + '行' + col.to_s + '列'
    end
end
