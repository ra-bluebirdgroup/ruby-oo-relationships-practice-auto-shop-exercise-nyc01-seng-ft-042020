# **Car**
#
#   - `Car.all` Get a list of all cars √
#
#   - `Car.classifications` Get a list of all car classifications √
#
#   - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification √

class Car
  @@all = [ ]
  attr_reader :make, :model, :classification, :mechanic, :car_owner

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
     Car.all  << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.collect { |car| car.classification}.uniq
  end

  def self.find_mechanics(client_car)
    Mechanic.all.select{ |mechanic| mechanic.specialization == client_car.classification ? mechanic : nil}.compact
  end

end
