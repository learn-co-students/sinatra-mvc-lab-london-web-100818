require 'pry'
class PigLatinizer


  def piglatinize(word)
    word
    array=word.split
    array.map {|x| PigLatinizer.parse(x)}
    new_array=array.map {|x| PigLatinizer.parse(x)}
    new_array.join(" ")

  end

  def self.parse(x)
    consonants=%w[bcdfghjklmnpqrstvwxyz]
    vowels=%w[aeiou]
      if vowels[0].include?(x[0].downcase)
        x= x+'way'
      else
        until !consonants[0].include?(x[0].downcase) do
          x=x[1...x.size]+x[0]
        end
      x=x+'ay'
      end
  end

end
