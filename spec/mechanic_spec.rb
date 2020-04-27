require 'spec_helper'
# **Mechanic**
#
#   - `Mechanic.all` Get a list of all mechanics √
#
#   - `Mechanic#cars` Get a list of all cars that a mechanic services √
#
#   - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic √
#
#   - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic √

describe 'Mechanic' do
  describe '#.all'   do
  it 'know all mechanics that have been created' do
    carowner1 = CarOwner.new('Mr. P')
    carowner2 = CarOwner.new('Ms. Roberts')
    mechanic1 = Mechanic.new('Enrique', 'Truck')
    mechanic2 = Mechanic.new('Joe', 'exotic')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
     car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic1, carowner2)
     car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic2, carowner2)
       expect(Mechanic.all).to include(mechanic2)
       expect(Mechanic.all).to include(mechanic1)
     end
   end

   describe "#cars" do
     it "Get a list of all cars that a mechanic services" do
       carowner1 = CarOwner.new('The CarOwner' )
       carowner2 = CarOwner.new('Mr. P')
       carowner3 = CarOwner.new('Ms. Roberts')
       mechanic1 = Mechanic.new('Enrique', 'Truck')
       mechanic2 = Mechanic.new('Joe', 'exotic')
       mechanic3 = Mechanic.new('Joe', 'exotic')
        car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
        car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, carowner2)
        car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, carowner3)

       expect(mechanic1.cars).to include(car1)
       expect(mechanic2.cars).to include(car2)
     end
   end

describe "#car_owners" do
  it "gets a list of all the car owners that go to a specific mechanic" do
    carowner1 = CarOwner.new('The CarOwner' )
    carowner2 = CarOwner.new('Mr. P')
    carowner3 = CarOwner.new('Ms. Roberts')
    mechanic1 = Mechanic.new('Enrique', 'Truck')
    mechanic2 = Mechanic.new('Joe', 'exotic')
    mechanic3 = Mechanic.new('Joe', 'exotic')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
     car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic1, carowner2)
     car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, carowner3)

    expect(mechanic1.car_owners).to include(carowner1)
    expect(mechanic1.car_owners).to include(carowner2)
    expect(mechanic3.car_owners).to include(carowner3)
  end
end

describe "#car_owners_names" do
  it "get a list of the names of all car owners who go to a specific mechanic" do
    carowner1 = CarOwner.new('The CarOwner')
    carowner2 = CarOwner.new('Mr. P')
    carowner3 = CarOwner.new('Ms. Roberts')
    mechanic1 = Mechanic.new('Enrique', 'Truck')
    mechanic2 = Mechanic.new('Joe', 'exotic')
    mechanic3 = Mechanic.new('Joe', 'exotic')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
     car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, carowner2)
     car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, carowner3)
    expect(mechanic1.car_owners_names).to include('The CarOwner')
    expect(mechanic2.car_owners_names).to include('Mr. P')
    expect(mechanic3.car_owners_names).to include('Ms. Roberts')
  end
end

end
