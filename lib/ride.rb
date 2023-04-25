class Ride
  attr_reader :name,
              :distance,
              :terrain,
              :loop
  def initialize(info)
    @name = info[:name]
    @distance = info[:distance]
    @terrain = info[:terrain]
    @loop = info[:loop]
  end

  def loop?
    @loop
  end

  def total_distance
    if loop == true
      distance
    else
      distance + distance
    end
  end

end