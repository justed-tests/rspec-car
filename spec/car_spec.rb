require 'car'

describe 'Car' do
  describe 'attributes' do
    it 'allows read/write :make' do
      car = Car.new
      car.make = 'Test'
      expect(car.make).to eq('Test')
    end

    it 'allows read/write :year' do
      car = Car.new
      car.year = 9999
      expect(car.year).to eq(9999)
    end

    it 'allows read/write :color' do
      car = Car.new
      car.color = 'foo'
      expect(car.color).to eq('foo')
    end

    it 'allows read wheels' do
      car = Car.new
      expect(car.wheels).to eq(4)
    end

    it 'allows writing for doors'
  end

  describe '.colors' do
    it 'returns an array of colors' do
      c = %w(blue black red green)
      expect(Car.colors).to match_array(c)
    end
  end

  describe '#full_name' do
    it 'returns it in the expected format' do
      @honda = Car.new(make: 'Honda', year: 2004, color: 'blue')
      expect(@honda.full_name).to eq('2004 Honda (blue)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end
end
