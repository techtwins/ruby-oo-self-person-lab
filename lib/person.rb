# your code goes here
## Introduction
# To practice object oriented programming (OOP), you're going to create a Person class. Each instance of the `Person` class will have the ablity to:
#   - get paid/receive payments
#   - take a bath
#   - call a friend
#   - start a conversation
#   - state if they are happy and/or clean


# ## Instructions
# - First you need to create a person class that is initialized with a name that cannot be changed.
# - Each instance of class `Person`should be able to remember their name
# - Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.


class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name=name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3
        "Hi #{friend_name.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
        'blah blah partisan blah lobbyist'
        elsif
        topic == "weather"
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end



end
