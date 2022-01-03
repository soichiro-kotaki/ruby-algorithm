lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

def main(lines)
    if lines[0] === 1
    end
    lines.each_index do |i|
        v = lines[i]
        puts " #{v}"
    end
end

main(readlines)
