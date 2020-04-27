# **Mechanic**
#
#   - `Mechanic.all` Get a list of all mechanics √
#
#   - `Mechanic#cars` Get a list of all cars that a mechanic services √
#
#   - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic √
#
#   - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic


class Mechanic
 attr_reader :name, :specialization

def initialize(name, specialization)
  @name = name
  @specialization = specialization
end

def self.all
 Car.all.collect{ |car| car.mechanic}
end

def cars
  Car.all.collect{ |car| car.mechanic == self ? car : nil}.compact
end

def car_owners
 self.cars.map { |car| car.car_owner}
end

def car_owners_names
  self.car_owners.map { |car_owner| car_owner.name}
end

end
