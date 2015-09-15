puts 'When I was born:'
birthday = Time.mktime(1992, 12, 2, 12, 10)
puts birthday
puts 'When I will billion seconds old:'
old = birthday + 1000000000
puts old


puts '---------------------------------'

colorHash = {} # this is identical 'Hash.new'

colorHash['strings'] = 'red'
colorHash['numbers'] = 'blue'
colorHash['main words'] = 'green'

colorHash.each do |codeType, color|
	puts codeType + ': ' + color
end

puts '--------------------------------'

class Die

	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		@numberShowing
	end

end

puts Die.new.showing

puts '--------------------------------'

puts 'Create a new program - little dragon ;)'

class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 10 # He is full
		@stuffInIntestine = 0 # Dragon doesn't need to walk
		puts @name + ' is born'
	end

	def feed
		puts 'You feed ' + @name + '.'
		@stuffInIntestine = 0
		passageOfTime
	end

	def walk
		puts 'You walk with ' + @name
		@stuffInIntestine = 0
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true
		3.times do
			if @asleep
				passageOfTime
			end
			if @asleep
				puts @name + ' snores, filling the house with black smoke.'
			end
		end
		if @asleep
			@asleep = false
			puts @name + ' slowly wake up'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air'
		passageOfTime
	end

	def rock
		puts 'You rock ' + @name
		@asleep = true
		puts 'He briefly doez off'
		passageOfTime
		if @asle
			@asleep = false
			puts '.. but wakes when you stop'
		end
	end

	private

	def hungry?
		@stuffInBelly <= 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whooooops! ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Isaak'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed	

puts '--------------------------------'

puts 'Orange Tree:'

class OrangeTree

	def initialize tree # create tree
		@tree = tree
		@treeHight = 1
		age = 0
		oranges = 0
		puts 'You just planted new orange tree ;)'
	end

	def oneYearLater
		@age = @age.to_i + 1

		if @age > 17
			puts 'Your tree has died ;('
				@treeHight = @treeHight
			else
				@treeHight = @treeHight + 3
			end
			if (@age > 3 and @age < 13)
				@oranges = 2 * @age
			else
				@oranges = 0
			end
		end

	def height
		puts 'Your tree is currently ' + @treeHight.to_s + ' feet'
	end

	def countOranges
		puts 'Your tree has ' + @oranges.to_s + ' oranges'
	end

	def pickOranges
		if @oranges < 1
			puts 'No oranges to pick'
		else
			@oranges = @oranges - 1
			puts 'Orange is nice!!'
		end
	end
end

myTree = OrangeTree.new 'First tree'
myTree.height
myTree.oneYearLater
myTree.countOranges
myTree.oneYearLater
myTree.height
myTree.oneYearLater
myTree.countOranges
myTree.oneYearLater
myTree.countOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.oneYearLater
myTree.height
myTree.oneYearLater
myTree.countOranges
myTree.pickOranges
myTree.pickOranges
myTree.oneYearLater
myTree.height
myTree.oneYearLater
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.oneYearLater
myTree.countOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.pickOranges
myTree.oneYearLater
myTree.height
myTree.countOranges
myTree.oneYearLater
myTree.height
myTree.countOranges