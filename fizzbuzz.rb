require 'rspec'

class FizzBuzz
  def output(number)
    return 'FIZZBUZZ' if number % 5 == 0 && number % 3 == 0
    return 'BUZZ' if number % 5 == 0
    return 'FIZZ' if number % 3 == 0
    return number
  end

  def run
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(1)).to eq(1)
    end

    it 'should return 2 when given 2' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(2)).to eq(2)
    end

    it 'should return FIZZ when given 3' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(3)).to eq('FIZZ')
    end

    it 'should return BUZZ when given 5' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(5)).to eq('BUZZ')
    end

    it 'should return FIZZ when given 6' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(6)).to eq('FIZZ')
    end

    it 'should return BUZZ when given 10' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(10)).to eq('BUZZ')
    end

    it 'should return FIZZBUZZ when given 15' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(15)).to eq('FIZZBUZZ')
    end

    it 'should return FIZZBUZZ when given 30' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(30)).to eq('FIZZBUZZ')
    end
  end
end