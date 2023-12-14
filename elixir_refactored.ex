
defmodule WeatherStation do
  defstruct [:temperature, :humidity, :pressure, :wind_speed, :wind_direction, :timestamp]

  # Initializes the WeatherStation with default settings
  def init_station do
    %WeatherStation{temperature: 0, humidity: 0, pressure: 0, wind_speed: 0, wind_direction: "N", timestamp: DateTime.utc_now()}
  end

  # Collects current weather data
  def collect_data(temperature, humidity, pressure, wind_speed, wind_direction) do
    data = %WeatherStation{
      temperature: temperature,
      humidity: humidity,
      pressure: pressure,
      wind_speed: wind_speed,
      wind_direction: wind_direction,
      timestamp: DateTime.utc_now()
    }
    IO.puts("Collected Data: #{inspect(data)}")
  end

  # Analyze the weather data
  def analyze_data(data = %WeatherStation{}) do
    [
      analyze_temperature(data.temperature),
      analyze_humidity(data.humidity),
      analyze_pressure(data.pressure),
      analyze_wind(data.wind_speed, data.wind_direction)
    ]
  end

  # Analyze temperature data using multi-clause functions
  defp analyze_temperature(temp) when temp > 30, do: IO.puts("High temperature alert")
  defp analyze_temperature(temp) when temp < 0, do: IO.puts("Low temperature alert")
  defp analyze_temperature(_), do: IO.puts("Normal temperature")

  # Analyze humidity data using multi-clause functions
  defp analyze_humidity(humidity) when humidity > 80, do: IO.puts("High humidity alert")
  defp analyze_humidity(humidity) when humidity < 20, do: IO.puts("Low humidity alert")
  defp analyze_humidity(_), do: IO.puts("Normal humidity")

  # Analyze pressure data using a case statement
  defp analyze_pressure(pressure) do
    case pressure do
      p when p < 1000 -> IO.puts("Low pressure alert")
      p when p > 1020 -> IO.puts("High pressure alert")
      _ -> "Normal pressure"
    end
  end

  # Analyze wind data using multi-clause functions and guards
  defp analyze_wind(speed, direction) when speed > 20 do
    IO.puts("High #{direction} wind alert")
  end
  defp analyze_wind(_, _), do: IO.puts("Normal wind conditions")

  def print_analysis(data = %WeatherStation{}) do
    data
    |> analyze_data()
    #|> Enum.each(fn analysis -> IO.puts(analysis) end)
  end

end
station = WeatherStation.collect_data(32, 85, 1015, 15, "NE")
# or
station = WeatherStation.init_station()

WeatherStation.print_analysis(station)
