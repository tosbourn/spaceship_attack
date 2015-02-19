class World
  GRAVITATIONAL_ACCELERTION = 9.81 ** 2

  def trajectory(alpha, velocity)
    (2 * Math.cos(alpha) * Math.sin(alpha) * (velocity ** 2)) / GRAVITATIONAL_ACCELERTION
  end
end

class SpaceShip
  attr_accessor :firing_angle
  def initialize
    @position = 0
    @firing_angle = 45
  end

  def fire
  end
end

class Alien
end

class Game
end
