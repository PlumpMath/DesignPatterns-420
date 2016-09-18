require_relative "weather_data"
require_relative "observer"

class ForecastDisplay
  include Observer
  attr_accessor :current_pressure, :last_pressure, :weather_data

  def initialize (current_pressure = 29.28, last_pressure = 0.0,  weather_data)
    @current_pressure = current_pressure
    @last_pressure = last_pressure
    super(weather_data)
  end

  def show()
    print 'Forecast: '
    if @current_pressure > @last_pressure
      puts 'Improving weather on the way!'
    elsif @current_pressure == @last_pressure
      puts 'More of the same'
    elsif @current_pressure < @last_pressure
      puts 'Watch out for cooler, rainy weather'
    end
  end

  def update(temperature, humidity, pressure)
    @last_pressure = @current_pressure
    @current_pressure = pressure
    show
  end
end