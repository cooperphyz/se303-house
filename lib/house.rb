class House

    attr_reader :opener, :randomized, :verses
    def initialize(pirate=true, randomized=false)
        if randomized == true && pirate == false
            house_verse = HouseVerseRandom.new
        elsif pirate == true && randomized == 
            house_verse = HouseVersePirate.new
        else
            house_verse = HouseVerse.new
        end
        @verses = house_verse.lyrics
    end

    def line(number)
        "This is the %s.\n" % verses.last(number).join('')
    end

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end

class HouseVerse
    attr_reader :randomized

    def initialize(randomized = false)
        @randomized = randomized
    end

    def line(number)
        "This is the %s.\n" % verses.last(number).join('')
    end

    def lyrics
        newArrayOne, newArrayTwo = fragments.partition.with_index { |_,i| i.even? }
 
        Hash[newArrayOne.zip(newArrayTwo)].map { |k, v| "#{k}#{v}" }.append('house that Jack built')
    end
    
    def fragments
        [
          'horse and the hound and the horn that ', 'belonged to the ',
          'farmer sowing his corn that ', 'kept the ',
          'rooster that crowed in the morn that ', 'woke the ',
          'priest all shaven and shorn that ', 'married the ',
          'man all tattered and torn that ', 'kissed the ',
          'maiden all forlorn that ', 'milked the ',
          'cow with the crumpled horn that ', 'tossed the ',
          'dog that ', 'worried the ',
          'cat that ', 'killed the ',
          'rat that ', 'ate the ',
          'malt that ', 'lay in the '
        ]
    end
end


class HouseVerseRandom < HouseVerse
    def lyrics
        newArrayOne, newArrayTwo = fragments.partition.with_index { |_,i| i.even? }
        
        newArrayOne.shuffle!
        newArrayTwo.shuffle!
 
        Hash[newArrayOne.zip(newArrayTwo)].map { |k, v| "#{k}#{v}" }.append('house that Jack built')
    end
end

class HouseVersePirate < HouseVerse

end