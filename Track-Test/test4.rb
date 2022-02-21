# 入力されたファイル名から、ファイルの種類を推定する
class FileName
    def initialize(file_name)
        @file_name = file_name
    end

    def predict_file_types
        if @file_name.include?('img') && @file_name.include?('doc')
            puts 'presentation'
        elsif @file_name.include?('img')
            puts 'image'
        elsif @file_name.include?('doc')
            puts 'document'
        else
            puts 'other'
        end
    end
end

file_name = FileName.new(gets)
file_name.predict_file_types
