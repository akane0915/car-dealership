require('rspec')
require('vehicle')

describe(Vehicle) do

  before() do
    Vehicle.clear()
  end

  describe('#age') do
    it('returns the vehicle age') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.age()).to(eq(17))
    end
  end

  describe('#worth_buying?') do
    it('returns false if vehicle is not american made and younger than 16') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end

  describe('#make') do
    it('returns the make of the vehicle') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.make()).to(eq('Toyota'))
    end
  end

  describe('#model') do
    it('returns the model of the vehicle') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.model()).to(eq('Prius'))
    end
  end

  describe('#year') do
    it('returns the year of the vehicle') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will push a new vehicle to the vehicles array') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('.clear') do
    it('will clear the vehicles array') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the vehicle id') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns the vehicle by its id') do
      test_vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      test_vehicle2 =
      Vehicle.new({:make=>"Toyota", :model => "Corolla", :year => "1999", :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle2.save()
      expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
    end
  end
end
