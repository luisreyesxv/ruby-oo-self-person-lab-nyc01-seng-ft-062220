# your code goes here
require 'pry'

class Person
attr_reader :name , :happiness , :hygiene
attr_accessor :bank_account




    def initialize(name)
        @name= name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(happiness)
        @happiness=limit_attr(happiness,0)
    end
    def hygiene=(hygiene)
        @hygiene=limit_attr(hygiene,0)
    end


   def clean?
    @hygiene > 7
   end
        
    def happy?
        @happiness >7
    end
    
    def get_paid(money)
        @bank_account += money
        "all about the benjamins"
    end
    
    def take_bath
        #binding.pry
     
       self.hygiene= @hygiene +4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def limit_attr (attribute,number)
        #binding.pry
        answer=attribute + number
        if answer <0 
            answer = 0
        elsif answer >10
            answer = 10
        else
            answer
        end
    end

    def work_out
       self.happiness= @happiness+2
        self.hygiene= @hygiene-3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = friend.happiness+3
        self.happiness = @happiness+3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end    
     def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness = @happiness-2
            friend.happiness = friend.happiness-2
            "blah blah partisan blah lobbyist"
        
        elsif topic  == "weather"
            self.happiness = @happiness+1
            friend.happiness = friend.happiness+1
            "blah blah sun blah rain"
        
        else
            "blah blah blah blah blah"
        end        
    end


      
end   
