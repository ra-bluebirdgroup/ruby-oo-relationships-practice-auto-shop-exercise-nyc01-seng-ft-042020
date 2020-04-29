class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
   @@all
  end

  def cars
   Car.all.collect{ |car| car.car_owner == self ? car : nil}.compact
  end

  def mechanics
   Car.all.collect{ |car| car.car_owner == self ? car.mechanic : nil}.compact
  end

  def self.average_number_of_cars
     Car.all.map{ |car| car.car_owner.cars}.flatten.count / CarOwner.all.count.to_f
   end

end
