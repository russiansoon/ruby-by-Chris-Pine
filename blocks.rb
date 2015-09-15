def doUntilFalse firstInput, someProc
	input = firstInput
	output = firstInput

	while output
		input = output
		output = someProc.call input
	end

	input
end

buildArrayOfSquares = Proc.new do |array| # create array of squares (numbers)
	lastNumber = array.last 
	if lastNumber <= 0
		false # stop
	else
		array.pop # delete last number
		array.push lastNumber * lastNumber # замена на квадрат
		array.push lastNumber - 1 # за которым идет предыдущее
	end
end

alwaysFalse = Proc.new do |justIgnoreMe|
	false
end

puts doUntilFalse([6], buildArrayOfSquares).inspect

puts doUntilFalse('I\'m writing this article at 3:00 a.m., please, kill me', alwaysFalse)

puts '--------------------------------------'

def compose proc1, proc2
	Proc.new do |x|
		proc2.call(proc1.call(x))
	end
end

squareIt = Proc.new do |x|
	x * x
end

doubleIt = Proc.new do |x|
	x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt
puts doubleThenSquare.call(4)
puts squareThenDouble.call(5)

puts '--------------------------------------'

class Array

	def eachEven (&wasABlock_nowAProc)
		isEven = true
		self.each do |object|
			if isEven
				wasABlock_nowAProc.call object
			end

			isEven = (not isEven)
		end
	end
end

['яблоками', 'гнилыми яблоками', 'вишней', 'дурианом'].eachEven do |fruit|
	puts 'Mm! Я так люблю пирожки с ' + fruit + ', а вы?'
end

[1, 2, 3, 4, 5].eachEven do |oddBall|
	puts oddBall.to_s + ' - НЕ ЧЕТНОЕ число'
end

puts '--------------------------------------'

def profile descriptionOfBlock, &block # description of block and block
	startTime = Time.now

	block.call

	duration = Time.now - startTime

	puts descriptionOfBlock + ': ' + duration.to_s + ' seconds'
end

profile '25000 x2' do
	number = 1

	25000.times do
		number = number + number
	end

	puts number.to_s.length.to_s + ' numbers'
end

profile '0 - 1000000' do
	number = 0

	1000000.times do
		number = number + 1
	end
end

puts '--------------------------------------'

