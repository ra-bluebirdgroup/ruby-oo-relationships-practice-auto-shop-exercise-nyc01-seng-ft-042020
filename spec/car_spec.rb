# **Car**
#
#   - `Car.all` Get a list of all cars √
#
#   - `Car.classifications` Get a list of all car classifications √
#
#   - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification √

describe 'Car' do
describe '#new' do
  it 'initializes with a name, a model, a classification, mechanic, owner' do
    car_owner1 = CarOwner.new('Mr. P')
    mechanic1 = Mechanic.new('Enrique', 'Truck')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, car_owner1)
    expect { Car.new('Toyota', 'Rav4', 'Truck', mechanic1, car_owner1) }.to_not raise_error
   end
 end

 describe '#.all' do
  it 'gets a list of all Cars' do
       carowner1 = CarOwner.new('The CarOwner' )
       carowner2 = CarOwner.new('Mr. P')
       carowner3 = CarOwner.new('Ms. Roberts')
       mechanic1 = Mechanic.new('Enrique', 'Truck')
       mechanic2 = Mechanic.new('Joe', 'exotic')
       mechanic3 = Mechanic.new('Joe', 'exotic')
        car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
        car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, carowner2)
        car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic3, carowner3)

        expect(Car.all).to include(car2)
        expect(Car.all).to include(car3)
    end
  end

describe '#.classifications' do
  it 'get a list of all car classifications' do
    carowner1 = CarOwner.new('The CarOwner' )
    carowner1 = CarOwner.new('Mr. P')
    carowner2 = CarOwner.new('Ms. Roberts')
    mechanic1 = Mechanic.new('Enrique', 'Truck')
    mechanic2 = Mechanic.new('Joe', 'exotic')
     car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic1, carowner1)
     car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic1, carowner2)
     car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic2, carowner2)

     expect(Car.classifications).to include(car1.classification)
     expect(Car.classifications).to include(car2.classification)
   end
 end

 describe '#.find_mechanics' do
   it 'gets a list of mechanics that have an expertise that matches the passed in car classification √' do
     carowner1 = CarOwner.new('The CarOwner' )
     carowner1 = CarOwner.new('Mr. P')
     carowner2 = CarOwner.new('Ms. Roberts')
     mechanic1 = Mechanic.new('Enrique', 'Truck')
     mechanic2 = Mechanic.new('Joe', 'antique')
      car1 = Car.new('Toyota', 'Rav4', 'Truck', mechanic2, carowner1)
      car2 = Car.new('Mercedes Benz', 'G-class', 'Tuck', mechanic2, carowner2)
      car3 = Car.new('Aston Martin', 'DB9', 'antique', mechanic1, carowner2)

      expect(Car.find_mechanics(car1)).to include(mechanic1)
      expect(Car.find_mechanics(car3)).to include(mechanic2)
      end
    end

end
