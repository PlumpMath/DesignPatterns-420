require_relative 'observer'

class CurrentConditionsDislay
  include Observer

  attr_reader :temperature, :humidity

  def show()
    print "Curruent conditions: ", @temperature, " F degrees and ", @humidity, "% humidity\n"
  end

  def update (temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    show
  end

end