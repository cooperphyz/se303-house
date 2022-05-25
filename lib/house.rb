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

    def rat_that_ate(number=nil)
        if number >=3
            "rat that ate the "
        end
    end

    def cat_that_killed(number=nil)
        if number >=4
            "cat that killed the "
        end
    end

    def dog_that_worried(number=nil)
        if number >=5
            "dog that worried the "
        end
    end

    def cow_with_crumpled(number=nil)
        if number >=6
            "cow with the crumpled horn that tossed the "
        end
    end

    def maiden_all_forelorn(number=nil)
        if number >=7
            "maiden all forlorn that milked the "
        end
    end

    def man_all_tattered(number=nil)
        if number >=8
            "man all tattered and torn that kissed the "
        end
    end

    def priest_all_shaven(number=nil)
        if number >=9
            "priest all shaven and shorn that married the "
        end
    end

    def rooster_crowed(number=nil)
        if number >=10
            "rooster that crowed in the morn that woke the "
        end
    end

    def farmer_sowing(number=nil)
        if number >= 11
            "farmer sowing his corn that kept the "
        end
    end

    def horse_and_hound(number=nil)
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
        HouseNumber.new(number).rat_that_ate(number)
    end

    def cat_that_killed(number=nil)
        HouseNumber.new(number).cat_that_killed(number)
    end

    def dog_that_worried(number=nil)
        HouseNumber.new(number).dog_that_worried(number)
    end

    def cow_with_crumpled(number=nil)
        HouseNumber.new(number).cow_with_crumpled(number)
    end

    def maiden_all_forelorn(number=nil)
        HouseNumber.new(number).maiden_all_forelorn(number)
    end

    def man_all_tattered(number=nil)
        HouseNumber.new(number).man_all_tattered(number)
    end

    def priest_all_shaven(number=nil)
        HouseNumber.new(number).priest_all_shaven(number)
    end

    def rooster_crowed(number=nil)
        HouseNumber.new(number).rooster_crowed(number)
    end

    def farmer_sowing(number=nil)
        HouseNumber.new(number).farmer_sowing(number)
    end

    def horse_and_hound(number=nil)
        HouseNumber.new(number).horse_and_hound(number)
    end

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end