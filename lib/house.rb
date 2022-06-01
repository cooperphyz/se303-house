class House

    attr_reader :opener, :randomized, :verses
    def initialize(opener="This is ", randomized=false)
        @opener = opener
        @randomized = randomized
        @verses = HouseVerse.new(randomized).lyrics
    end

    def line(number)
        "#{opener}the %s.\n" % verses.last(number).join('')
    end

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end

class HouseVerse
    attr_reader :randomized

    def initialize(randomized)
        @randomized = randomized
    end

    def lyrics
        newArrayOne, newArrayTwo = fragments.partition.with_index { |_,i| i.even? }
        #newArrayOne.shuffle!
        #newArrayTwo.shuffle!

        newArrayThree = Hash[newArrayOne.zip(newArrayTwo)].map { |k, v| "#{k}#{v}" }.append('house that Jack built')

        return newArrayThree
        
        #return (randomized ? fragments.shuffle : fragments).append('house that Jack built')    
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