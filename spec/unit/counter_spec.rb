require 'counter'

describe Counter do

  subject(:counter) { described_class.new }

  describe '#new' do
    it 'starts with a count of 0' do
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'is called on an instance of the Counter class' do
      expect(counter).to respond_to(:increment)
    end

    it 'adds 1 to the count' do
      counter.increment
      expect(counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'is called on an instance of the Counter class' do
      expect(counter).to respond_to(:decrement)
    end

    it 'subtracts 1 from the count' do
      counter.decrement
      expect(counter.count).to eq -1
    end
  end

  describe '#reset' do
    it 'is called on an instance of the Counter class' do
      expect(counter).to respond_to(:reset)
    end

    it 'resets the count' do
      counter.increment
      counter.reset
      expect(counter.count).to eq 0
    end
  end
end
