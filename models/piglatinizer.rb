class PigLatinizer 

    def piglatinize(word)
        if word.split.length > 1
            array = []
            words = word.split(" ")
            result =  words.collect{|w| parse_word(w)}.join(" ")
        else
            result = parse_word(word)
        end
    end

    def parse_word(word)
        #puts word
        vowels = ['a', 'e', 'i', 'o', 'u']
        result = ""
        if vowels.include? word[0].downcase
            result = word + 'way'
        elsif vowels.include? word[1]
            result = word[1, word.length] + word[0] + 'ay'
        elsif vowels.include? word[2]
            result = word[2, word.length] + word[0,2] + 'ay'
        elsif vowels.include? word[3]
            result = word[3, word.length] + word[0,3] + 'ay'
        else
            result = word + 'ay'
        end
    end

end