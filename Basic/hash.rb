#ハッシュは、JavaScriptでいうオブジェクトに当たる、keyとvalueのセットで構成されるデータの集合（一部性質が異なる）
#

hash = {
    ruby: 'rails',
    python: 'Django',
    php: 'Laravel',
    java: 'Spring',
    JavaScript: 'React',
}

#要素の取得:  fetchメソッドもしくはhash[:keyの名前]
puts hash.fetch(:ruby) # => "rails"

###第２引数にデフォルト値のセット
puts hash.fetch(:React, 'keyがありません') # => {:ruby=>"rails", :python=>"Django", :php=>"Laravel", :java=>"Spring", :JavaScript=>"React"}

#要素の追加:  storeメソッドもしくはhash[:keyの名前] = value
puts hash.store(:vue, 'Nuxt.js') # => {:ruby=>"rails", :python=>"Django", :php=>"Laravel", :java=>"Spring", :JavaScript=>"React", :vue=>"Nuxt.js"}

###ハッシュ内の要素数を取得:  sizeもしくはlength
puts hash.size # => 6
puts hash.length # => 6

#ハッシュ内の要素を削除:  deleteメソッド
hash.delete(:vue)
puts hash # => {:ruby=>"rails", :python=>"Django", :php=>"Laravel", :java=>"Spring", :JavaScript=>"React"}

#ハッシュの結合:  mergeメソッド
hash2 = { 'go': 'Echo' }
puts hash.merge(hash2)

#ハッシュの検索:  findメソッド
p hash.find { |k, v| k == :ruby }

#ハッシュのソート:  sortメソッド
p hash.sort.to_h #アルファベットの昇順

#ハッシュの各要素に対する処理:  eachメソッド
hash.each { |key, value| puts "#{key} => #{value}" }

p hash.keys
