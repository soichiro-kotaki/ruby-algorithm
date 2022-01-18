#for文は処理内の変数がグローバルスコープ
#each文はローカルスコープなので、外部から参照できない

for num in 1..5
    #１から５以下の数が出力される(５回)
    puts num
end
#1..5は範囲オブジェクト
for num in 1...5
    #１から５未満の数が出力される(4回)
    puts num
end

#複数のループ変数による繰り返し処理（二次元配列など）
for a, b in [[1, 2], [3, 4], [5, 6]]
    puts "配列の要素は#{a}と#{b}です。"
end

#ハッシュの繰り返し処理
array = []
for key, value in { 'Apple': 130, 'Banana': 100, 'Melon': 400, 'Orange': 160 }
    array.push(name: key, price: value)
end
puts array

#break：ループ処理を止める（脱出する）
for num in [10, 20, 30, 40, 50]
    break if num == 30
    puts num
end

#next：ループ処理をスキップする
for num in [10, 20, 30, 40, 50]
    next if num == 30
    puts num
end

#redo : ループ処理をやり直す
# for num in [10, 20, 30, 40, 50]
#     redo if num == 30
#     puts num
# end

#until文（条件がfalseの場合に処理が繰り返し実行される）
num = 100
until num <= 0
    puts num
    num = num - 1
end

#while文（条件がtrueの場合に処理が繰り返し実行される）
num = 50
while num < 100
    puts num
    num = num + 1
end
