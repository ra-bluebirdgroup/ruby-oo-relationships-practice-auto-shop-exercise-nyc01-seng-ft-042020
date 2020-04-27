require 'spec_helper'
# **CarOwner**
#
#   - `CarOwner.all` Get a list of all owners √
#
#   - `CarOwner#cars` Get a list of all the cars that a specific owner has √
#
#   - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to √
#
#   - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners √
# "antique", "exotic", or "clunker",

describe CarOwner do
describe '#new' do
  it 'initializes with a name' do
    new_car_owner = CarOwner.new('Mr. Smith')

    expect { CarOwner.new('Mrs. Robinson') }.to_not raise_error
   end
 end

 describe '#all' do
   it 'gets a list of all owners' do
   carowner1 = CarOwner.new('Mr. P')
   carowner2 = CarOwner.new('Ms. Roberts')
   mechanic1 = Mechanic.new('Enrique', 'Truck')
   mechanic2 = Mechanic.new('Joe', 'exotic')
    car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
    car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic1, carowner2)
    car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic2, carowner2)
   expect(CarOwner.all).to include(carowner2)
    expect(CarOwner.all).to include(carowner1)

 end
end

describe '#cars' do
 it 'get a list of all the cars that a specific owner has' do
      car_owner1 = CarOwner.new('Tony')
      mechanic1 = Mechanic.new('Joe', 'Truck')
      car1 = Car.new('Mercedes Benz', 'G-Class', 'Truck', mechanic1, car_owner1)

       expect(car_owner1.cars).to include(car1)

   end
 end

 describe '#mechanics' do
   it 'get a list of all the mechanics that a specific owner goes to' do
     car_owner1 = CarOwner.new('Mr. P')
     car_owner2 = CarOwner.new('Ms. Roberts')
     car_owner3 = CarOwner.new('Mr. T')
     mechanic1 = Mechanic.new('Enrique', 'Truck')
     mechanic2 = Mechanic.new('Joe', 'exotic')
     mechanic3 = Mechanic.new('Mike', 'antique')
      car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, car_owner1)
      car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, car_owner2)
      car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, car_owner3)
      expect(car_owner1.mechanics).to include(mechanic1)
      expect(car_owner2.mechanics).to include(mechanic2)
      expect(car_owner3.mechanics).to include(mechanic3)
      end
    end

describe '#average_number_of_cars' do
  it 'Get the average amount of cars owned for all owners' do
    car_owner1 = CarOwner.new('Mr. P')
    car_owner2 = CarOwner.new('Ms. Roberts')

    mechanic1 = Mechanic.new('Enrique', 'Truck')
    mechanic2 = Mechanic.new('Joe', 'exotic')
    mechanic3 = Mechanic.new('Mike', 'antique')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, car_owner1)
     car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, car_owner2)
     car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, car_owner2)

    expect(car_owner1.average_number_of_cars).to eq(1.4)
    expect(car_owner2.average_number_of_cars).to eq(1.4)

   end
 end

end
