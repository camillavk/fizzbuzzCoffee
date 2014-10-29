class Fizzbuzz
	isDivisibleByThree: (number) ->
		@isDivisibleBy(3, number)
	isDivisibleByFive: (number) ->
		@isDivisibleBy(5, number)
	isDivisibleByFifteen: (number) ->
		@isDivisibleBy(15, number)
	isDivisibleBy: (divisor, number) ->
		number % divisor == 0
	says: (number) ->
		return "Fizzbuzz" if @isDivisibleByFifteen(number)
		return "Fizz" if @isDivisibleByThree(number)
		return "Buzz" if @isDivisibleByFive(number)
		return number


module.exports = Fizzbuzz