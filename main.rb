class Question
	attr_reader :name

	$game_hash = {}

	
	def initialize
		print "Hello! Please Enter a name: "
		$name = gets.chomp.capitalize
		$score = 0
		$hs = "Highscores"
		$arr = [1,2,3].shuffle
	end

	def q1
		a = "UST"
		print "Question :Where do you study? "
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
		print "Question :Favorite Alcoholic Beverage? "
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
		print "Question :Bahala na si? "
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

	def again
		loop do 
			p "Again(Yes/No)?"
			ans = gets.chomp.capitalize
			if ans == ('Yes') or ans == ('Y')
				$start = Question.new
				case $name
					when $hs
						$start.Hscore
					else
						$start.ran
						$start.complete
					end
			end
			if ans == ('No') or ans == ('N')
				exit
			end
		end
	end

	def complete
		$game_hash[$name] = $score

		p "Game Completed."
		p "Name: #{$name}" 
		p "Score: #{$score} "
		p "----------------------"
		$start.again
	end

	def Hscore
		$game_hash.sort_by {|key, value| value}.to_h
		if $name == $hs
			p "Highscores: "
			$game_hash.each do |key, value|
			 puts "#{key} - #{value}"
			end
		end
	end 

	$start = Question.new
	$start.ran
	$start.complete
end