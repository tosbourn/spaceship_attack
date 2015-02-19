require_relative "spaceship"
include World
describe World do
  xit "Should allow a shot fired up in the air to come straight down" do
    expect(World.trajectory(0,10)).to be (0.0)
  end

  xit "Should allow a shot fired straight down to not cover any distance" do
    expect(World.trajectory(180,10)).to be (0.0)
  end

  xit "Should let a shot travel a greater distance when fired at 30° than 10°" do
    expected = World.trajectory(10,10)
    expect(World.trajectory(30,10)).to be > expected
  end
end

describe SpaceShip do
  let (:spaceship) { SpaceShip.new }
  it "Should start every mission with no shots fired" do
    expect(spaceship.shots).to be 0
  end

  it "Should have an additional shot fired for every attempt" do
    spaceship.fire
    expect(spaceship.shots).to be 1
  end
end

describe Alien do
  let (:alien) { Alien.new }
  it "Should be alive before we kill the SCUM" do
    expect(alien.alive?).to be true
  end

  it "Should be able to die" do
    alien.is_killed
    expect(alien.alive?).to be false
  end

  it "Should be able to move" do
    starting_position = alien.position
    alien.move
    expect(alien.position).not_to be starting_position
  end
end
