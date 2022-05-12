
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "What color are apples?\n(a)red\n(b)orange\n(c)blue\n(d)purple"
p2 = "Who is the best chef in town?\n(a)Stu\n(b)Stephen\n(c)Jaeden\n(d)Michael"
p3 = "What color is the macbook air?\n(a)blue\n(b)silver\n(c)yellow\n(d)red"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "d"),
    Question.new(p3, "b")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)