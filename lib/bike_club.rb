class BikeClub
  attr_reader :name,
              :bikers
  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    bikers << biker
  end

  def most_rides
    most_rides = nil
    most_rides_count = 0
    bikers.each do |biker|
      ride_count = biker.rides.count
      if ride_count > most_rides_count
        most_rides = biker
        most_rides_count = ride_count
      end
    end
    return most_rides
  end

  def best_time(ride)
    best_time = nil
    best_biker = nil
    bikers.each do |biker|
      if biker.rides.include?(ride)
        time = biker.rides[ride].min
          if best_time == nil || time < best_time
            best_time = time
            best_biker = biker
          end
      end
    end
    
      return best_biker
  end

  def bikers_eligible(ride)
    list_of_bikers = []
    bikers.each do |biker|
      if  biker.acceptable_terrain.include?(ride.terrain) && biker.max_distance > ride.total_distance
      list_of_bikers << biker
      end
    end
    list_of_bikers
  end

  
end