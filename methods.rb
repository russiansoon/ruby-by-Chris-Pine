puts 'Expanding upon englishNumber to add thousands, millions, etc.'

def englishNumber number

	if number < 0
		return 'Please, write a number that isn\'t negative.'
	end

	if number == 0
		return 'zero'
	end

	numString = '' # this sring are return.

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] # ones
	teensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eightin', 'nineteen']

	left = number
	write = left / 100
	left = left - write * 100

	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'

		if left > 0
			numString = numString + ' '
		end
	end

	write = left / 10
	left = left - write * 10

	if write > 0
		if ((write == 1 ) and (left > 0))
			numString = numString + teenagers[left - 1]
			left = 0
		else
			numString = numString + teensPlace[write - 1]
		end

		if left > 0
			numString = numString + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write - 1]
	end
	numString
end

puts englishNumber(14)
puts englishNumber(12)
puts englishNumber(294)	
puts englishNumber(99)
puts englishNumber(0)
puts englishNumber(8)
puts englishNumber(11)