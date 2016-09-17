require_relative "weather_data"

module Observer

  attr_reader :weather_data

  # @param weather_data [WeatherData]
  def initialize(weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end
end