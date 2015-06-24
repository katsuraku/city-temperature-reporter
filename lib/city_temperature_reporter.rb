class CityTemperatureReporter
  attr_reader :city_name, :weatherman

  def initialize city_name, weatherman
    @city_name  = city_name
    @weatherman = weatherman
  end

  def request_temperature
    weatherman.get_temperature(city_name)
  end
end
