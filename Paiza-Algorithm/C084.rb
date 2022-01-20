S = gets.chomp
deco_text = '+' * (S.split('').length + 2)
puts "#{deco_text}\n+#{S}+\n#{deco_text}"
