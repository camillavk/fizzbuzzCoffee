chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->
	fizzbuzz = null
	before ->
		fizzbuzz = new Fizzbuzz
	describe 'divisible by', ->
		it 'knows that 3 is divisible by 3', ->
			expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

		it 'knows that 1 is not divisible by 3', ->
			expect(fizzbuzz.isDivisibleByThree(1)).not.to.be.true

		it 'knows that 5 is divisible by 5', ->
			expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

		it 'knows that 1 is not divisible by 5', ->
			expect(fizzbuzz.isDivisibleByFive(1)).not.to.be.true

		it 'knows that 15 is divisible by 15', ->
			expect(fizzbuzz.isDivisibleByFifteen(15)).to.be.true

		it 'knows that 1 is not divisible by 15', ->
			expect(fizzbuzz.isDivisibleByFifteen(1)).not.to.be.true

	describe 'when playing the game, says', ->
		it 'Fizz when a number is divisible by 3', ->
			expect(fizzbuzz.says(3)).to.equal "Fizz"

		it 'Buzz when a number is divisible by 5', ->
			expect(fizzbuzz.says(5)).to.equal "Buzz"

		it 'Fizzbuzz when a number is divisible by 15', ->
			expect(fizzbuzz.says(15)).to.equal "Fizzbuzz"

		it '1 when number is 1', ->
			expect(fizzbuzz.says(1)).to.equal 1