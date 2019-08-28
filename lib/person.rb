# your code goes here
require 'pry'
class Person
    attr_reader :name, :hygiene, :happiness
    attr_writer 
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #limit hygiene to between 0,10
    def hygiene=(value)
        if value > 10
            @hygiene = 10
            
        elsif value < 0
            @hygiene = 0
            
        else 
            @hygiene = value
            
        end
    end
    
    #limit happiness to between 0,10
    def happiness=(value)
        if value > 10
            @happiness= 10
        elsif value < 0
            @happiness = 0
        else 
            @happiness = value
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene=(new_hygiene)
        # self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        new_hygiene = @hygiene - 3
        self.hygiene=(new_hygiene)
        new_happy = @happiness + 2
        self.happiness=(new_happy)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        new_happy = @happiness + 3
        self.happiness=(new_happy)
        friend_happy = friend.happiness + 3
        friend.happiness=(friend_happy)
        convo = "Hi #{friend.name}! It's #{self.name}. How are you?"
        convo
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            new_happy = @happiness - 2
            self.happiness=(new_happy)
            friend_happy = friend.happiness - 2
            friend.happiness=(friend_happy)
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            new_happy = @happiness + 1
            self.happiness=(new_happy)
            friend_happy = friend.happiness + 1
            friend.happiness=(friend_happy)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
