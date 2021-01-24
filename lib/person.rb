# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :take_bath
    attr_reader :hygiene
    def initialize(name, hygiene = 8, happiness = 8)
        @name = name
        @hygiene = hygiene
        @happiness = happiness
    end 

   

    def name
        @name
    end

    def bank_account  #we had to get the bank account ammount from person thru attracces, and add that to the original amount
        original_amount = @original_amount
        original_amount = 25
        original_amount += @bank_account.to_i #to_i converted what the bank account to an integer which then can be added by 25
        original_amount += @salary.to_i
    end

    def happiness=(num)
        @happiness = num
    
        if @happiness > 10
          @happiness = 10
        elsif @happiness < 0
          @happiness = 0
        else
          @happiness
        end
      end

    def hygiene=(num)
        @hygiene = num
    
        if @hygiene > 10
          @hygiene = 10
        elsif @hygiene < 0
          @hygiene = 0
        else
          @hygiene
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
         @salary = salary
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

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
         
         if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2 
            "blah blah partisan blah lobbyist"

         elsif topic == "weather"
             self.happiness += 1
             person.happiness += 1 
            "blah blah sun blah rain"
         else
            "blah blah blah blah blah"
         end
    end

end