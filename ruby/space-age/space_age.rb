# frozen_string_literal: true

class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31_557_600
  ORBIT_PERIOD = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze
  def initialize(age_seconds)
    @age_seconds = age_seconds
  end

  ORBIT_PERIOD.each do |planets, orbital_value|
    define_method("on_#{planets}") do
      @age_seconds.to_f / (EARTH_YEAR_IN_SECONDS * orbital_value)
    end
  end
end
