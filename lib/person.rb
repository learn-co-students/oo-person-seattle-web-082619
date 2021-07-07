class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
 
    def initialize(name) 
        @name = name 
        self.bank_account= 25
        self.happiness = 8
        self.hygiene = 8
    end 

    def happiness=(number)
        @happiness = number.clamp(0,10) 
    end 

    def hygiene=(number)
        @hygiene = number.clamp(0,10)
    end 

    def points_greater_than_seven?(number)
        number > 7 
    end 

    def happy?
        points_greater_than_seven?(@happiness)
    end 

    def clean? 
        points_greater_than_seven?(@hygiene)
    end 
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person,topic)
        boring_sentence = "blah blah "

        case topic 
        when "politics"
            person.happiness -= 2
            self.happiness -= 2
            boring_sentence += "partisan blah lobbyist"
        when "weather"   
            person.happiness += 1
            self.happiness += 1
            boring_sentence += "sun blah rain"
        else 
            boring_sentence += "blah blah blah"
        end 

        boring_sentence
    end
end 