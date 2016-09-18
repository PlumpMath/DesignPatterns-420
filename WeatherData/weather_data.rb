require_relative "subject"

class WeatherData
  include Subject

  attr_accessor :temperature, :humidity, :pressure, :observer

  def set_measurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    notify_observers
  end
end