require_relative 'observer'

class StatisticsDisplay
  include Observer
  attr_reader :max_temp, :min_temp, :temp_sum, :num_readings
  @max_temp = 0.0
  @min_temp = 200
  @temp_sum  = 0.0
  @num_readings = 0

  def show()
    puts "Avg/Max/Min temperature = ", (@tempSum / @num_readings), "/", @maxTemp, "/", @minTemp
  end

  def update (temperature, humidity, pressure)
    @temp_sum = @temp_sum + temperature
    @num_readings = @num_readings + 1
    if (temperature > @max_temp)
      @max_temp = temperature
    end

    if (temperature < @min_temp)
      @min_temp = temperature
    end
    show
  end
end