=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end
#
# - Earth: orbital period 365.25 Earth days, or 31557600 seconds
# - Mercury: orbital period 0.2408467 Earth years
# - Venus: orbital period 0.61519726 Earth years
# - Mars: orbital period 1.8808158 Earth years
# - Jupiter: orbital period 11.862615 Earth years
# - Saturn: orbital period 29.447498 Earth years
# - Uranus: orbital period 84.016846 Earth years
# - Neptune: orbital period 164.79132 Earth years

class SpaceAge
  @@earth_year = 31_557_600.0
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / (@@earth_year)
  end

  def on_mercury
    @seconds / (@@earth_year * 0.2408467)
  end

  def on_venus
    @seconds / (@@earth_year * 0.61519726)
  end

  def on_mars
    @seconds / (@@earth_year * 1.8808158)
  end

  def on_jupiter
    @seconds / (@@earth_year * 11.862615)
  end

  def on_saturn
    @seconds / (@@earth_year * 29.447498)
  end

  def on_uranus
    @seconds / (@@earth_year * 84.016846)
  end

  def on_neptune
    @seconds / (@@earth_year * 164.79132)
  end
end
