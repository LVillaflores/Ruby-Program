class Question
	attr_reader :name

	def initialize
		print "Hello! Please Enter a name: "
		$name = gets.chomp.capitalize
		$score = 0
		$arr = [1,2,3].shuffle
	end

	def q1
		a = "UST"
		print "Question 1:Where do you study? "
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
		print "Question 2:Favorite Alcoholic Beverage? "
		b = gets.chomp
		if b.capitalize.eql?a
			puts "Correct!"
			$score+=1
		else
			puts "Wrong! Correct Answer is: #{a}"
		end 
	end

	def q3
		a = "Batman"
		print "Question 3:Bahala na si? "
		b = gets.chomp
		if b.capitalize.eql?a
			puts "Correct!"
			$score+=1
		else
			puts "Wrong! Correct Answer is: #{a}"
		end 
	end

	def ran
		for i in 0..2
			case $arr.at(i)
				when 1
					$start.q1
				when 2
					$start.q2
				when 3
					$start.q3
			end
		end
	end

	def complete
		p "Game Completed."
		p "Name: #{$name}"
		p "Score: #{$score}"
		p "----------------------"
	end

$start = Question.new
$start.ran
$start.complete
end
