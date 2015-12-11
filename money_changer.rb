require 'rspec'

class ChangeMachine
  def change(cents)
    collection = []
    denominations = [25,10,5,1]
    coin_index = 0

    while cents > 0
      if cents >= denominations[coin_index]
        collection << denominations[coin_index]
        cents -= denominations[coin_index]
      else
        coin_index += 1
      end
    end

    collection
    # coin_values = [25, 10, 5, 1]
    # coins = Hash.new
    # coin_values.each do |coin_value|
    #   coins[coin_value] = cents / coin_value
    #   cents = cents % coin_value
    # end
    # result = []
    # coins.each do |key, value|
    #   value.times { result << key }
    # end
    # result
  end
end



RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [] when given 0' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(0)).to eq([])
    end

    it 'should return [1] when given 1' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [5] when given 5' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return [10] when given 10' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end  
end