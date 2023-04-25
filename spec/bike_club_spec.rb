require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  describe 'iteration3' do
    describe '#initialize' do
      it 'exists and has attriubutes' do
        bike_club1 = BikeClub.new("Bikes on Bikes")

        expect(bike_club1).to be_a(BikeClub)
        expect(bike_club1.name).to eq("Bikes on Bikes")
        expect(bike_club1.bikers).to eq([])
      end
    end

    describe '#add_biker' do 
      it 'can add bikers' do
        bike_club1 = BikeClub.new("Bikes on Bikes")
        biker1 = Biker.new("Kenny", 30)
        biker2 = Biker.new("Athena", 15)

        bike_club1.add_biker(biker1)
        bike_club1.add_biker(biker2)

        expect(bike_club1.bikers).to eq([biker1, biker2])
      end
    end

    describe '#most_rides' do
      it 'can show the biker with the most logged rides' do
        bike_club1 = BikeClub.new("Bikes on Bikes")
        biker1 = Biker.new("Kenny", 30)
        biker2 = Biker.new("Athena", 15)
        ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
        ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

        biker1.learn_terrain!(:gravel)
        biker1.learn_terrain!(:hills)

        biker2.learn_terrain!(:gravel)
        biker2.learn_terrain!(:hills)

        biker1.log_ride(ride1, 92.5)
        biker1.log_ride(ride2, 60.9)

        biker2.log_ride(ride2, 65.0)

        bike_club1.add_biker(biker1)
        bike_club1.add_biker(biker2)

        expect(bike_club1.most_rides).to eq(biker1)
        

      end
    end

    describe '#best_time' do
      it 'can tell us which Biker has the best time for a given Ride' do
        bike_club1 = BikeClub.new("Bikes on Bikes")
        biker1 = Biker.new("Kenny", 30)
        biker2 = Biker.new("Athena", 15)
        ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
        ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

        biker1.learn_terrain!(:gravel)
        biker1.learn_terrain!(:hills)

        biker2.learn_terrain!(:gravel)
        biker2.learn_terrain!(:hills)

        biker1.log_ride(ride2, 60.9)
        biker2.log_ride(ride2, 55.0)

        bike_club1.add_biker(biker1)
        bike_club1.add_biker(biker2)

        expect(bike_club1.best_time(ride2)).to eq(biker2)
      end
    end

    describe '#bikers_eligible' do
      it 'can tell us which Bikers are eligible for a given Ride' do
        bike_club1 = BikeClub.new("Bikes on Bikes")
        biker1 = Biker.new("Kenny", 30)
        biker2 = Biker.new("Athena", 15)
        ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
        ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
        ride3 = Ride.new({name: "Creek trail 2", distance: 10.7, loop: false, terrain: :hills})

        biker1.learn_terrain!(:gravel)
        biker1.learn_terrain!(:hills)

        biker2.learn_terrain!(:gravel)
        
        biker1.log_ride(ride1, 92.5)
        biker1.log_ride(ride2, 60.9)

        biker2.log_ride(ride2, 55.0)

        bike_club1.add_biker(biker1)
        bike_club1.add_biker(biker2)

        expect(bike_club1.bikers_eligible(ride2)).to eq([biker1, biker2])
        expect(bike_club1.bikers_eligible(ride3)).to eq([biker1])
      end
    end
  end

  describe '#iteration4' do
    describe 'record_group_ride' do
      it '' do
       
      end
    end
  end
end