require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('#age') do
    it('returns the vehicle age') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.age()).to(eq(17))
    end
  end

  describe('#worth_buying?') do
    it('returns false if vehicle is not american made and younger than 16') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

  describe('#make') do
    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.make()).to(eq('Toyota'))
    end
  end

  describe('#model') do
    it('returns the model of the vehicle') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.model()).to(eq('Prius'))
    end
  end

  describe('#year') do
    it('returns the year of the vehicle') do
      test_vehicle = Vehicle.new('Toyota','Prius',2000)
      expect(test_vehicle.year()).to(eq(2000))
    end
  end
end
