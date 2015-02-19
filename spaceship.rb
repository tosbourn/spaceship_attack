module World
  GRAVITATIONAL_ACCELERTION = 9.81 ** 2
  MAX_POSITION = 20

  def World.trajectory(alpha, velocity)
    #(2 * Math.cos(alpha) * Math.sin(alpha) * (velocity ** 2)) / GRAVITATIONAL_ACCELERTION
    alpha % 10
  end

  def World.max_position
    MAX_POSITION
  end
end

class SpaceShip
  include World
  attr_accessor :firing_angle
  attr_reader :shots
  POSITION = 0
  VELOCITY = 10
  def initialize
    @firing_angle = 45
    @shots = 0
  end

  def fire
    World.trajectory(@firing_angle, VELOCITY)
    @shots += 1
  end
end

class Alien
  include World
  attr_reader :position

  def initialize
    @living = true
    @position = rand(1..10)
  end

  def alive?
    @living
  end

  def move
    @position = (rand(0..1) % 2) ? @position - 1 : @position + 1
    if @position > World::MAX_POSITION
      @position = World::MAX_POSITION
    end
  end

  def is_killed
    @living = false;
  end

end

class Game
  def initialize
    @alien = Alien.new
    @spaceship = SpaceShip.new

    puts "Kill that Alien Scum!"

    while @alien.alive?
      puts "What angle do you want the weapons aimed at?"
      @spaceship.firing_angle = gets.strip
      puts "Firing at #{@spaceship.firing_angle}"
      if @spaceship.fire == @alien.position
        @alien.is_killed
        puts "We killed the Alien with #{@spaceship.shots} shots!"
        exit
      else
        puts "We missed and the Alien is moving!"
        puts "We hit #{@spaceship.fire} and our scanners can see the Alien was at #{@alien.position}"
        @alien.move
      end
    end
  end
end
