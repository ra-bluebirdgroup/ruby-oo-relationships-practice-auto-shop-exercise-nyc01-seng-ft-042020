class Mechanic
  @@all = []
 attr_reader :name, :specialization

def initialize(name, specialization)
  @name = name
  @specialization = specialization
  Mechanic.all << self
end

def self.all
 @@all
end

def cars
  Car.all.select{ |car| car.mechanic == self ? car : nil}.compact
end

def car_owners
 self.cars.map { |car| car.car_owner}
end

def car_owners_names
  self.car_owners.map { |car_owner| car_owner.name}
end

end
