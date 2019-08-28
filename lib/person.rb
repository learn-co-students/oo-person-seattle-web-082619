require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    @@all = []

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

    def self
        @@all
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else @hygiene = value
        end

    end

    def happiness=(value)
        if value < 0
            @happiness = 0
        elsif value > 10
            @happiness = 10
        else @happiness = value
        end
    end

    def get_paid (salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        
        # binding.pry
        self.hygiene=(@hygiene + 4)
        # binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        #binding.pry
        friend.happiness=(friend.happiness + 3)
        # binding.pry
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            friend.happiness=(friend.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end 
    end

end
