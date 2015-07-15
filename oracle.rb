questions_answered = 0

def wait_for_question(questions_answered)
  if questions_answered == 0
    puts "Ask me a question!"
  else
    do_I_love_you = rand(2)
    if do_I_love_you == 0
      puts "I love you!"
    else
      puts "mwah..."
    end
    puts "Ask me another question!"
  end
  questions_answered += 1
  question = gets.chomp.downcase
  give_answer(question, questions_answered)
end

def ask_question(questions_answered)
end

def give_answer(question, questions_answered)
  if question.include?("bye") || question.include?("exit") || question.include?("quit")
    puts "Come back soon again"
    Process.exit
  elsif question.include?("reverse") and not question.include?("this:")
    puts "I don't know the answer, but I can do a cool trick for you. Just type 'Reverse this: [The word or words you would like to have reversed]'"
  elsif question.include?("reverse this:")
    question = question.gsub(/reverse this:/, '')
    question_rev = question.reverse.strip
    question = question.strip
    puts question_rev
    if question == question_rev
      puts "You have typed a palindrome! Yeah :-)"
    end
  elsif question.include?("your name") || question.include?("who are you")
    puts "my name is Oracle"
    puts "What is your name?"
    answer = gets.chomp
    puts "Great to meet you #{answer}"
  elsif question.include?("where") && question.include?("from")
    puts "I am from cyberspace"
  else
    puts "I don't know the answer"
  end

  wait_for_question(questions_answered)
end

wait_for_question(questions_answered)
