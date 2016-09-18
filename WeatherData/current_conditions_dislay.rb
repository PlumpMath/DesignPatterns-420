require_relative "weather_data"

class CurrentConditionsDislay
  attr_accessor :temperature, :humidity, :weather_data

  # @param weather_data [WeatherData]
  def initialize (weather_data)
    @weather_data = weather_data
    @weather_data.register_observer(self)
  end

  def show()
    puts "Curruent conditions: #{@temperature}F degrees and #{@humidity}% humidity"
  end

  def update (temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    show
  end

end