class House

    attr_reader :house_verse
    def initialize(pirate=false, randomized=false)

        if randomized == true && pirate == false
            @house_verse = HouseVerseRandom.new
        elsif pirate == true && randomized == false
            @house_verse = HouseVersePirate.new
        elsif pirate == true && randomized == true
            @house_verse = HouseVerseRandomPirate.new
        else
            @house_verse = HouseVerse.new
        end
        @verses = house_verse.lyrics
    end

    def line(number)
        house_verse.line(number)
    end

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end

class HouseVerse

    def self.for(randomized, opener)
        registry.find {|candidate| candidate.handles?(randomized, opener)}.new
    end

    def self.registry
        @registry ||= []
    end

    def self.register(candidate)
        registry.prepend(candidate)
    end

    def self.inherited(candidate)
        register(candidate)
    end

    HouseVerse.register(self)

    def line(number)
        "#{opener}the %s.\n" % lyrics.last(number).join('')
    end

    def opener
        "This is "
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

    def opener  
        "Thar be "
    end
end

class HouseVerseRandomPirate < HouseVerseRandom

    def opener  
        "Thar be "
    end  
end