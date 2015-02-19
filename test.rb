require_relative "spaceship"

world = World.new

360.times do |deg|
  puts "#{deg} | #{world.trajectory(deg, 10)}"
end
