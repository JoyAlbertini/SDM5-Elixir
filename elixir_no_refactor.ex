defmodule WeatherStation do
  defstruct [:temperature, :humidity, :pressure, :wind_speed, :wind_direction, :timestamp]

  # Initializes the WeatherStation with default settings
  def init_station do
    %WeatherStation{temperature: 0, humidity: 0, pressure: 0, wind_speed: 0, wind_direction: "N", timestamp: DateTime.utc_now()}
    IO.puts("dshjds")
  end

  # Collects current weather data
  def collect_data(temperature, humidity, pressure, wind_speed, wind_direction) do
    data =  %WeatherStation{
      temperature: temperature,
      humidity: humidity,
      pressure: pressure,
      wind_speed: wind_speed,
      wind_direction: wind_direction,
      timestamp: DateTime.utc_now()
    }
    IO.puts("Collected Data: #{inspect(data)}")
    data
  end

  # Analyze the weather data
  def analyze_data(data) do
    analyze_temperature(data.temperature)
    analyze_humidity(data.humidity)
    analyze_pressure(data.pressure)
    analyze_wind(data.wind_speed, data.wind_direction)
  end

  # Analyze temperature data
  defp analyze_temperature(temperature) when temperature > 30 do
    "High temperature alert"
  end
  defp analyze_temperature(temperature) when temperature < 0 do
    "Low temperature alert"
  end
  defp analyze_temperature(_temperature) do
    "Normal temperature"
  end

  # Analyze humidity data
  defp analyze_humidity(humidity) when humidity > 80 do
    "High humidity alert"
  end
  defp analyze_humidity(humidity) when humidity < 20 do
    "Low humidity alert"
  end
  defp analyze_humidity(_humidity) do
    "Normal humidity"
  end

  # Analyze pressure data
  defp analyze_pressure(pressure) when pressure < 1000 do
    "Low pressure alert"
  end
  defp analyze_pressure(pressure) when pressure > 1020 do
    "High pressure alert"
  end
  defp analyze_pressure(_pressure) do
    "Normal pressure"
  end

  # Analyze wind data
  defp analyze_wind(speed, "N") when speed > 20 do
    "High north wind alert"
  end
  defp analyze_wind(speed, "S") when speed > 20 do
    "High south wind alert"
  end



end
WeatherStation.collect_data(22, 50, 1013, 5, "N")
