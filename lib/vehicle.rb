class Vehicle
  @@vehicles = []

  define_method(:initialize) do |attributes|
    @make = attributes.fetch(:make)
    @model = attributes.fetch(:model)
    @year = attributes.fetch(:year)
    @color = attributes.fetch(:color)
    @engine_size= attributes.fetch(:engine_size)
    @number_of_doors = attributes.fetch(:number_of_doors)
    @id = @@vehicles.length()+1
  end

  define_method(:age) do
    Time.now().year()-@year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:id) do
    @id
  end

  define_method(:worth_buying?) do
    american_cars = ["Chrysler", "Ford", "GM"]
    age()<16 && american_cars.include?()
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_singleton_method(:find) do |identification|
    matched_vehicle = nil
    @@vehicles.each() do |vehicle|
       if vehicle.id() == identification.to_i()
         matched_vehicle = vehicle
       end
    end
    matched_vehicle
  end
end
