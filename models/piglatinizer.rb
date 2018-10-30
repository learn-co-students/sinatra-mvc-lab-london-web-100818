class PigLatinizer
    attr_accessor :string

    def piglatinize(string)
        if !string.include?(" ")
            string = [string]
        else
            string = string.split(" ")
        end
        new_string = ""
        string.each {|w|
            w = w.split("")
            vowels = %w[a e i o u]
            
            if vowels.include?(w.first.downcase)
                w = "#{w.join + 'way'} "
                new_string << w
            else
                first_letters = ""
                while !vowels.include?(w.first.downcase)
                    first_letters << w.shift
                end
                w = "#{w.join + first_letters + 'ay'} "
                new_string << w
            end
        }
        new_string.strip
    end
end