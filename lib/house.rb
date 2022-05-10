class House
    def line(number)
        case number
        when 1
            "This is the house that Jack built.\n"
        when 2
            "This is the #{horse_and_hound(number)}#{farmer_sowing(number)}#{rooster_crowed(number)}#{priest_all_shaven(number)}#{man_all_tattered(number)}#{maiden_all_forelorn(number)}#{cow_with_crumpled(number)}#{dog_that_worried(number)}#{cat_that_killed(number)}#{rat_that_ate(number)}malt that lay in the house that Jack built.\n"
        else
            "This is the #{horse_and_hound(number)}#{farmer_sowing(number)}#{rooster_crowed(number)}#{priest_all_shaven(number)}#{man_all_tattered(number)}#{maiden_all_forelorn(number)}#{cow_with_crumpled(number)}#{dog_that_worried(number)}#{cat_that_killed(number)}#{rat_that_ate(number)}malt that lay in the house that Jack built.\n"
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

    def recite
        (1..12).map { |number| line(number) }.join("\n")
    end
end