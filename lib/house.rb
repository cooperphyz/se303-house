class HouseNumber
    attr_reader :number

    def initialize(number)
        @number = number
    end

    def malt_that_lay
        if number >= 2
            "malt that lay in the "
        end
    end

    def rat_that_ate
        if number >=3
            "rat that ate the "
        end
    end

    def cat_that_killed
        if number >=4
            "cat that killed the "
        end
    end

    def dog_that_worried
        if number >=5
            "dog that worried the "
        end
    end

    def cow_with_crumpled
        if number >=6
            "cow with the crumpled horn that tossed the "
        end
    end

    def maiden_all_forelorn
        if number >=7
            "maiden all forlorn that milked the "
        end
    end

    def man_all_tattered
        if number >=8
            "man all tattered and torn that kissed the "
        end
    end

    def priest_all_shaven
        if number >=9
            "priest all shaven and shorn that married the "
        end
    end

    def rooster_crowed
        if number >=10
            "rooster that crowed in the morn that woke the "
        end
    end

    def farmer_sowing
        if number >= 11
            "farmer sowing his corn that kept the "
        end
    end

    def horse_and_hound
        if number == 12
            "horse and the hound and the horn that belonged to the "
        end
    end
end

class House
    def line(number)
        "This is the #{horse_and_hound(number)}#{farmer_sowing(number)}#{rooster_crowed(number)}#{priest_all_shaven(number)}#{man_all_tattered(number)}#{maiden_all_forelorn(number)}#{cow_with_crumpled(number)}#{dog_that_worried(number)}#{cat_that_killed(number)}#{rat_that_ate(number)}#{malt_that_lay(number)}house that Jack built.\n"
    end

    def malt_that_lay(number=nil)
        HouseNumber.new(number).malt_that_lay
    end

    def rat_that_ate(number=nil)
        HouseNumber.new(number).rat_that_ate
    end

    def cat_that_killed(number=nil)
        HouseNumber.new(number).cat_that_killed
    end

    def dog_that_worried(number=nil)
        HouseNumber.new(number).dog_that_worried
    end

    def cow_with_crumpled(number=nil)
        HouseNumber.new(number).cow_with_crumpled
    end

    def maiden_all_forelorn(number=nil)
        HouseNumber.new(number).maiden_all_forelorn
    end

    def man_all_tattered(number=nil)
        HouseNumber.new(number).man_all_tattered
    end

    def priest_all_shaven(number=nil)
        HouseNumber.new(number).priest_all_shaven
    end

    def rooster_crowed(number=nil)
        HouseNumber.new(number).rooster_crowed
    end

    def farmer_sowing(number=nil)
        HouseNumber.new(number).farmer_sowing
    end

    def horse_and_hound(number=nil)
        HouseNumber.new(number).horse_and_hound
    end

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end