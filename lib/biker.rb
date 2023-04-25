class Biker
  attr_reader :name,
              :max_distance,
              :rides,
              :acceptable_terrain
  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = Hash.new {|h,k| h[k]=[]}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    acceptable_terrain << terrain
  end

  def log_ride(ride, time)
    if acceptable_terrain.include?(ride.terrain) && max_distance > ride.total_distance
      rides[ride] << time
    end
  end

  def personal_record(ride)
    best_time = false
    rides.each do |key, times|
      if key == ride
        best_time = times.min
      end
    end
    best_time
  end


end