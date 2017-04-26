require 'sinatra'
require 'sinatra/reloader'
require './lib/dealership'
require './lib/vehicle'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/dealerships/new') do
  erb(:dealerships_form)
end

get('/dealerships') do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

post('/dealerships') do
  name = params.fetch('name')
  Dealership.new(name).save()
  @dealerships = Dealership.all()
  erb(:success_dealership)
end

get('/vehicles/:id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i())
  erb(:vehicle)
end

get('/dealerships/:id') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership)
end

get('/dealerships/:id/vehicles/new') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership_vehicles_form)
end

post('/vehicles') do
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  @vehicle = Vehicle.new({:make=>"Toyota", :model => "Prius", :year => 2000, :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
  @vehicle.save()
  @dealership = Dealership.find(params.fetch('dealership_id').to_i())
  @dealership.add_vehicle(@vehicle)
  erb(:success_vehicle)
end
