city = 'Nagano'

# if文
if city === 'Tokyo'
    puts '東京です'
elsif city === 'Nagoya'
    puts '名古屋です'
elsif city === 'Osaka'
    puts '大阪です'
elsif city === 'Hokkaido'
    puts '北海道です'
elsif city === 'Nagano'
    puts '長野です'
else
    puts '条件に一致しませんでした'
end

# unless文
a = 7
unless a > 5
    puts "#{a} is less than 5"
else
    puts "#{a} is greater than 5"
end
