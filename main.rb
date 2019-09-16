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
			if ans == ('Yes') || ans == ('Y')
				$start = Question.new
				$start.check
				case $name
					when $hs
						$start.Hscore
					else
						$start.game
					end
			end
			if ans == ('No') || ans == ('N')
				exit
			end
		end
	end

	def complete
		$game_hash[$name] = $score
		p "Game Completed."
		p "Name: #{$name}" 
		p "Score: #{$game_hash[$name]} "
		p "----------------------"
		$check = $game_hash.key?($name)
		$start.again
	end

	def check
		if $name.is_a?(Hash) && $game_hash.key?($name)
			$score = $game_hash[$name]
			$start.complete
		end
	end

	def sort
		$game_hash = $game_hash.sort_by {|key, value| [-value,key]}.to_h
	end

	def Hscore
		$start.sort
		if $name == $hs
			p "Highscores: "
			$game_hash.each do |key, value|
			 puts "#{key} - #{value}"
			end
		end
	end

	def game
		$start.ran
		$start.complete
	end

	$start = Question.new
	$start.game
end