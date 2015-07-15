questions_answered = 0

def wait_for_question(questions_answered)
		if questions_answered == 0
			puts "What is your question, human?"

		else
			puts "Do you have another question, human?"
end

questions_answered += 1
question = gets.chomp.downcase
give_answer(question, questions_answered)
end


def ask_question(questions_answered)
end

def give_answer(question, questions_answered)
		ask_me_another_question = true

		if question.include? ("what is your name") or question.include? ("what's your name")
			puts "My name is Pythia. What is your name, human?"
				@answer_name = gets.chomp.capitalize
					puts "Greetings, #{@answer_name}."

		elsif question.include? ("what are you") or question.include? ("who are you") or question.include? ("what is this")
			puts "The Pythia is (on occasion) a noble of aristocratic family, sometimes a peasant, sometimes rich, sometimes poor, sometimes old, sometimes young, sometimes a very lettered and educated woman to whom somebody like the high priest and the philosopher Plutarch would dedicate essays, other times who could not write her own name..."

		elsif question.include? ("where are you") or question.include? ("what is your location") or question.include? ("where are you located")
			puts "I am not tethered to spacetime. Where are you from?"
				@answer_location = gets.chomp.capitalize
					puts "#{@answer_location} is nice, I suppose."

		elsif question.include? ("how old are you") or question.include? ("what is your age")
			puts "I am eternal. What is your age, human?"
				@answer_age = gets.chomp
					if @answer_age =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
						puts "#{@answer_age}, huh. I can assure you I am much older."
					else
						puts "#{@answer_age}? That is not a number! Try again."
					end

		elsif question.include? ("summarize") or question.include? ("tell me about me") or question.include? ("what is my age") or question.include? ("what is my name") or question.include? ("what is my location")
			puts "You are #{@answer_name} and you are from #{@answer_location}. Your age is #{@answer_age}. Puny human!"

		elsif question.include? ("backwards") or question.include? ("reverse") or question.include? ("what is my name backwards") or question.include? ("what is my name in reverse")
			puts "Your name in reverse is #{@answer_name.reverse}. Sounds just as silly as #{@answer_name}. Hah! "

		elsif question.include? ("length") or question.include? ("long") or question.include? ("what is the lenght of my name") or question.include? ("how long is my name")
			puts "Your silly human name is #{@answer_name.length} characters long."

		elsif question.include? ("no") or question.include? ("nope") or question.include? ("nah") or question.include? ("I have no questions")
			puts "Alright. Good-bye."
			ask_me_another_question = false

		else
			puts "42."

		end

		if ask_me_another_question
			wait_for_question(questions_answered)
		end
end

wait_for_question(questions_answered)
