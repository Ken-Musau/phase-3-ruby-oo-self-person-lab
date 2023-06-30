# your code goes here
class Person
    attr_reader :name
    attr_accessor :hygiene,:happiness, :bank_account


    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        @happiness = happy.clamp(0, 10)
    end

    def hygiene=(clean)
        @hygiene = clean.clamp(0, 10)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount.to_i
       "all about the benjamins"
    end

    # def happiness_range(value, max_range)
    #     value = max_range if(value > max_range)
    # end

    def take_bath
        self.hygiene +=4
        self.hygiene = 10 if(@hygiene > 10)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -=3
        self.happiness = 10 if(self.happiness > 10)
        self.hygiene = 0 if(self.hygiene < 0)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

kennedy = Person.new("Kennedy")
steve = Person.new("steve")

puts kennedy.happiness
puts steve.happiness
kennedy.call_friend(steve)
puts kennedy.happiness
puts steve.happiness

# kennedy.get_paid = "500"
# puts kennedy.bank_account
# kennedy.hygiene = 2
# puts kennedy.take_bath
# puts kennedy.hygiene
# kennedy.take_bath
# puts kennedy.hygiene
# kennedy.happiness = 9
# kennedy.hygiene = 2

# kennedy.work_out
# puts kennedy.happiness
# puts kennedy.hygiene
# kennedy.happiness = 2
# puts kennedy.happiness
# puts steve.happiness
# kennedy.call_friend(steve)
# kennedy.call_friend(steve)
# puts kennedy.happiness
# puts steve.happiness
# kennedy.call_friend(steve)
# puts kennedy.happiness