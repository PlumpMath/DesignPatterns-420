require_relative 'observer'

class ForecastDisplay
  include Observer
  attr_reader :temperature, :humidity

  def show()
    print "mostrar forecast\n"
    ##print "Curruent conditions: ", @temperature, " F degrees and ", @humidity, "% humidity\n"
  end

  def update (temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    show
  end
end