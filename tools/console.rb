require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



carowner1 = CarOwner.new('The CarOwner' )
carowner2 = CarOwner.new('Mr. P')
carowner3 = CarOwner.new('Ms. Roberts')
mechanic1 = Mechanic.new('Enrique', 'Truck')
mechanic2 = Mechanic.new('Joe', 'exotic')
mechanic3 = Mechanic.new('Joe', 'exotic')
 car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
 car2 = Car.new('Mercedes Benz', 'G-class', 'Truck', mechanic2, carowner2)
 car3 = Car.new('Aston Martin', 'DB9', 'Antique', mechanic3, carowner3)

binding.pry

somthiå
