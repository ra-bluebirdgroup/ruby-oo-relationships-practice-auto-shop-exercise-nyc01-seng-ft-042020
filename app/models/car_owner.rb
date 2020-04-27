# **CarOwner**
#
#   - `CarOwner.all` Get a list of all owners √
#
#   - `CarOwner#cars` Get a list of all the cars that a specific owner has √
#
#   - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to √
#
#   - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners

class CarOwner
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
   Car.all.collect{ |car| car.car_owner}
  end

  def cars
   Car.all.collect{ |car| car.car_owner == self ? car : nil}.compact #.flatten.count
  end

  def mechanics
   Car.all.collect{ |car| car.car_owner == self ? car.mechanic : nil}.compact
  end

  def average_number_of_cars
     Car.all.collect{ |car| car.car_owner.cars}.flatten.count / CarOwner.all.count.to_f
   end

end
