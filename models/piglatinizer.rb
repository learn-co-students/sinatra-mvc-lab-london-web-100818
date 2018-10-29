class PigLatinizer
    attr_accessor :user_input

    def piglatinize(user_input)
        words = user_input.split(' ')
        vowels=['a','e','i','o','u']
        piglatin = words.collect do |w|
            if vowels.include?(w[0].downcase)
                w + 'way'
            else
                letters = w.split('')
                n = letters.index { |l| vowels.include?(l) }
                if n == 1
                    w[n,w.length] + w[0] + 'ay'
                else
                    w[n,w.length] + w[0,n] + 'ay'
                end
            end
        end
        piglatin.join(' ')
    end

end
