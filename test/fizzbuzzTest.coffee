chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->
	fizzbuzz = null
	before ->
		fizzbuzz = new Fizzbuzz

	it 'knows that 3 is divisible by 3', ->
		expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

	it 'knows that 1 is not divisible by 3', ->
		expect(fizzbuzz.isDivisibleByThree(1)).not.to.be.true

	it 'knows that 5 is divisible by 5', ->
		expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

	it 'knows that 1 is not divisible by 5', ->
		expect(fizzbuzz.isDivisibleByFive(1)).not.to.be.true