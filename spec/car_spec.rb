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
  end

  describe '.colors'

  describe '#full_name'
end
