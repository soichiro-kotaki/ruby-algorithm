e = gets.split('+')
result = 0

e.each do |symbol|
    array = symbol.split('')
    array.each do |str|
        if str == '<'
            result = result + 10
        elsif str == '/'
            result = result + 1
        end
    end
end

puts result
