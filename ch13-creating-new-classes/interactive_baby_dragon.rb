class Dragon

	attr_reader :actions

	def initialize

		@name = "Norbert"

		@asleep = false

		@stuff_in_belly = 10 # He's full.

		@stuff_in_intestine = 0 # He doesn't need to go.

		@actions = ['bed', 'rock', 'eat', 'toss', 'walk']

		puts
		puts '%%%%%%%%%%%%%%%%%%%%%%%%%'
		puts  "NORBERT THE BABY DRAGON"
		puts '%%%%%%%%%%%%%%%%%%%%%%%%%'
		puts

		puts "Norbert's just a baby, but he's cooperative... if you speak to him nicely."
		puts

		puts "***************************** DISCLAIMER ************************************" 

		puts "A baby though he be, he still be dragons, so proceed with caution..." 
		puts "... lest you end up on the menu!" 

	end

	def eat

		puts "You feed #{@name}."

		@stuff_in_belly = 10

		passage_of_time

	end

	def walk

		puts "You walk #{@name}."

		@stuff_in_intestine = 0

		passage_of_time

	end

	def bed

		puts "You put #{@name} to bed."

		@asleep = true

		3.times do

			if @asleep

				passage_of_time

			end

			if @asleep

				puts "#{@name} snores, filling the room with smoke."

			end

		end

		if @asleep

			@asleep = false

			puts "#{@name} wakes up slowly."

		end

	end

	def toss

		puts "You toss #{@name} up into the air."

		puts 'He giggles, which singes your eyebrows.'

		passage_of_time

	end

	def rock

		puts "You rock #{@name} gently."

		@asleep = true

		puts 'He briefly dozes off...'

		passage_of_time

		if @asleep

			@asleep = false

			puts '...but wakes when you stop.'

		end

	end

	private

# "private" means that the methods defined here are

# methods internal to the object. (You can feed your

# dragon, but you can't ask him whether he's hungry.)

def hungry?

# Method names can end with "?".

# Usually, we do this only if the method

# returns true or false, like this:

@stuff_in_belly <= 2

end

def poopy?

	@stuff_in_intestine >= 8

end

def passage_of_time

	if @stuff_in_belly > 0

# Move food from belly to intestine.

@stuff_in_belly = @stuff_in_belly - 1

@stuff_in_intestine = @stuff_in_intestine + 1

		else # Our dragon is starving!

			if @asleep

				@asleep = false

				puts 'He wakes up suddenly!'

			end

			puts "#{@name} is starving! In desperation, he ate YOU!"

			exit # This quits the program.

		end

		if @stuff_in_intestine >= 10

			@stuff_in_intestine = 0

			puts "Whoops! #{@name} had an accident..."

		end

		if hungry?

			if @asleep

				@asleep = false

				puts 'He wakes up suddenly!'

			end

			puts "#{@name}'s stomach grumbles..."

		end

		if poopy?

			if @asleep

				@asleep = false

				puts 'He wakes up suddenly!'

			end

			puts "#{@name} does the potty dance..."

		end

	end

end

pet = Dragon.new 

loop do
	puts
	puts "========================================="
	puts "Here are some things Norbert likes to do;" 
	puts "========================================="
	puts
	puts "=> going to bed: Enter 'bed'" 
	puts "=> being rocked to sleep: Enter 'rock'" 
	puts "=> eating: Enter 'eat'" 
	puts "=> getting tossed in the air: Enter 'toss'" 
	puts "=> going for a walk: Enter 'walk"
	puts "=> say goodbye: enter 'bye'"

	puts
	puts "What do you want Norbert to do?"

	action = gets.chomp
	puts

	#puts @actions.class

	if pet.actions.include?(action)

		pet.public_send(action)

	elsif 

		action == 'bye'

		puts "Norbert can't wait to see you again! Bye!"

		break

	else

		puts 'Sorry, Norbert hasn\'t learned how to do that yet...' 

	end
end
# your code here