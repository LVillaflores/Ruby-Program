class Question
	attr_reader :name

	def initialize(name)
		print "Hello! Please Enter a name: "
		$name = gets.chomp
		$score = 0
		$arr = [1,2,3].shuffle
	end

	def q1
		a = "UST"
		print "Question 1:..."
		b = gets.chomp
		if b.upcase.eql?a
			puts "Correct!"
			$score+=1
		else
			puts "Wrong! Correct Answer is: #{a}"
		end 
	end

	def q2
		a = "Vodka"
		print "Question 2:..."
		b = gets.chomp
		if b.eql?a
			puts "Correct!"
			$score+=1
		else
			puts "Wrong! Correct Answer is: #{a}"
		end 
	end

	def q3
		a = "Batman"
		print "Question 3:..."
		b = gets.chomp
		if b.eql?a
			puts "Correct!"
			$score+=1
		else
			puts "Wrong! Correct Answer is: #{a}"
		end 
	end

	for i in 0..2
		case $arr.at(i)
			when 1
				puts "q1"
			when 2
				puts "q2"
			when 3
				puts "q3"
		end
	end

	def complete
		p "Game Completed."
		p "Name: #{$name}"
		p "Score: #{$score}"
	end

john = Question.new("John")
john.q1
john.q2
john.q3
john.complete
end