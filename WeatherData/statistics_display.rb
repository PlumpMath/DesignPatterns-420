require_relative "weather_data"
require_relative "observer"

class StatisticsDisplay
  include Observer
  attr_accessor :max_temp, :min_temp, :temp_sum, :num_readings, :weather_data

  def initialize (max_temp = 0.0, min_temp = 200, temp_sum = 0.0, num_readings = 0, weather_data)
    @max_temp = max_temp
    @min_temp = min_temp
    @temp_sum  = temp_sum
    @num_readings = num_readings
    super(weather_data)
  end

  def show()
    print "Avg/Max/Min temperature = ", (@temp_sum / @num_readings), "/", @max_temp, "/", @min_temp, "\n"
  end

  def update(temperature, humidity, pressure)
    @temp_sum += temperature
    @num_readings += 1

    if temperature > @max_temp
      @max_temp = temperature
    end

    if temperature < min_temp
      @min_temp = temperature
    end

    show
  end
end