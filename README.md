#SpaceShip Attack

Thank you for viewing my "solution". I am sorry to say it isn't as complete as I would like.

I started off the project by writing some blank tests to cover the main objects I assumed I would 
encounter.

Next up I wanted to tackle the issue of trajectory, it was the one thing I really wasn't sure about.

I started this by mapping out some of my assumptions as tests.

I tried a few different variations of the formula but each time I was getting inconsistent results. After
doing a lot of research online I decided to feed the formaula into Wolfram Alpha, [the results](http://www.wolframalpha.com/input/?i=%282+*+cos%2870%29+*+sin%2870%29+*+%2810%5E2%29%29%2Fg) were 
promising but I was not able to replicate them in Ruby.

I was disheartened but decided to stub out that section of the code for now and just get it returning _something_.

So I planned out the next steps with some simple tests and made sure my code completed them.

I added the notion of a shots fired counter, I thought this would be a fun addition that would add
to replayability. I also added in Emoji, because honestly I have been dying to use Emoji in a script
for a while and this made perfect sense!

I thought it would be dishonest to then spend time trying to fix the presumably simple thing I had
missed with the trajectory.

Hopefully this README and scripts will serve as a good example of my thought process if nothing else.

## To run the tests
`bundle install`
`rspec spaceship_spec.rb`

## To run the game
`ruby play.rb`

## Improvements

Obviously getting the correct formula to work for the missles would be the first improvement.

It would also be interesting to see what would happen if the Alien could fly or maybe the ship
has a couple of different rounds that fire at different speeds?
