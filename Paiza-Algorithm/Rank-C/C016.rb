# 自分の得意な言語で
input_line = gets.split('')
result = ''
leet = { 'A': '4', 'E': '3', 'G': '6', 'I': '1', 'O': '0', 'S': '5', 'Z': '2' }

input_line.each do |str|
    if leet.keys.find { |key| key == str.intern }
        result += leet[str.intern].to_s
    else
        result += str
    end
end

puts result
