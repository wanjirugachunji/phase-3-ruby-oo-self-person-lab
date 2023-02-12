class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(updated_value)

        if updated_value < 0
            @happiness = 0
        elsif updated_value > 10
            @happiness = 10
        else
            @happiness = updated_value
        end    
    end

    def hygiene=(updated_value)

        if updated_value < 0
            @hygiene = 0
        elsif updated_value > 10
            @hygiene = 10
        else
            @hygiene = updated_value
        end    
    end

    def happy?
      self.happiness > 7

    end

    def clean?
        self.hygiene > 7

    end 

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            friend.happiness -= 2
            self.happiness -= 2
         "blah blah partisan blah lobbyist"
         elsif topic == 'weather'
            friend.happiness += 1
            self.happiness += 1
         "blah blah sun blah rain" 
         else 
        "blah blah blah blah blah"
        end
    end

end