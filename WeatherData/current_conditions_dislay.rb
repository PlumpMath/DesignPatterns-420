require_relative 'observer'

class CurrentConditionsDislay
  include Observer

  attr_accessor :temperature, :humidity

  def show()
    puts "Curruent conditions: #{@temperature}F degrees and #{@humidity}% humidity"
  end

  def update (temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    show
  end

end