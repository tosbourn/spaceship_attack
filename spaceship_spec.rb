require_relative "spaceship"

describe World do
  let(:world) { World.new }

  it "Should allow a shot fired up in the air to come straight down" do
    expect(world.trajectory(0,10)).to be (0.0)
  end

  it "Should allow a shot fired straight down to not cover any distance" do
    expect(world.trajectory(180,10)).to be (0.0)
  end

  it "Should let a shot travel a greater distance when fired at 30° than 10°" do
    expected = world.trajectory(10,10)
    expect(world.trajectory(30,10)).to be > expected
  end
end

describe SpaceShip do
end

describe Alien do
end

describe Game do
end
