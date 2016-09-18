require_relative 'weather_data'
require_relative 'current_conditions_dislay'
require_relative 'statistics_display'
require_relative 'forecast_display'

class WeatherStation
  weather_data = WeatherData.new

  current_display = CurrentConditionsDislay.new(weather_data)
  statistics_display = StatisticsDisplay.new(weather_data)
  forecast_display = ForecastDisplay.new(weather_data)

  weather_data.set_measurements(80.0, 65.0, 30.4)
  weather_data.set_measurements(82.0, 70.0, 29.2)
  weather_data.set_measurements(78.0, 90.0, 29.2)

  weather_data.remove_observer(forecast_display)

  weather_data.set_measurements(78.0, 90.0, 29.2)




end
