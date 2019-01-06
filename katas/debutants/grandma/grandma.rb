class Grandma
    @@ready_to_quit = false
    @@bye_times = false

    def self.bye_times()       @@bye_times;         end
    def self.bye_times=(value) @@bye_times = value; end
    def self.ready_to_quit=(_) @@ready_to_quit = _; end
    def self.end_of_program()  @@ready_to_quit;     end

    def self.response(speaker_word, bye_times = nil)
        case
        when (speaker_word =~ /GOODBYE/)   then unless bye_times then @@bye_times = true && "LEAVING SO SOON?" else @@ready_to_quit = true && "LATER, SKATER!" end
        when (speaker_word =~ /[\S]/).nil?  then "WHAT?!"
        when speaker_word =~ /[[:lower:]]/  then "SPEAK UP, KID!"
        when (speaker_word =~ /[a-z]/).nil? then  "NO, NOT SINCE 1946!"
        else
        end
    end
end


#gem "minitest"
require "minitest/spec"
require "minitest/autorun"

describe "Grandma" do
    describe "User response" do
        it "should gradma reponds when nothing" do
            user_talk = ""
            Grandma.response(user_talk).must_equal "WHAT?!"
        end

        it "should gradma responds when lower-case letters questions" do
            user_talk = "GOOD Morniiiing !!!"
            Grandma.response(user_talk).must_equal "SPEAK UP, KID!"
        end

        it "should gradma reponds when all upper-case letters questions" do
            user_talk = "ARE YOU STILL ALIVE?"
            Grandma.response(user_talk).must_equal "NO, NOT SINCE 1946!"
        end

        it "should gradma reponds when first 'GOODBYE!'" do
            user_talk = "GOODBYE!"
            Grandma.response(user_talk).must_equal "LEAVING SO SOON?"
        end

        describe "Grandma reponse when second 'GOODBYE!'" do
            it "should grandma reponds" do
                user_talk = "GOODBYE!"
                Grandma.response(user_talk,true).must_equal "LATER, SKATER!"
            end

            it "should program exits" do
                Grandma.ready_to_quit = true
                Grandma.end_of_program.must_equal true
            end
        end
    end
end


class Program
    def self.perform
        puts "Welcome to the Grandma program: \nAn grandma is spoken to you, you can respond to see her reponds\n\t\t(info: press y then enter to quit) \n\n"

        ready_to_quit = false
        puts "HEY KID!"

        input = gets
        until ready_to_quit
          p Grandma.response(input, Grandma.bye_times)
          input = gets
          ready_to_quit = true if input =~ /^(y|yes)$/i
          break if Grandma.end_of_program
        end

        puts "LATER, SKATER!"
    end
end

# Program.perform
