require_relative "subject"

class WeatherData
  include Subject

  attr_reader :temperature, :humidity, :pressure
  attr_accessor :observers

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    notify_observers
  end
end