class FirstNonRepeat
    def first_non_repeater(string)
        return string if string.empty?
        list = string.chars
        list.find do |letter|
            string.downcase.count(letter.downcase) == 1 
        end
    end
end
