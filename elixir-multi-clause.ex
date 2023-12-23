defmodule TemperatureAnalyzer do
  def analyze_temperature(temperature, unit) do
    celsius_temp =
      if unit == "Fahrenheit" do
        (temperature - 32) * 5 / 9
      else
        temperature
      end
    if celsius_temp > 30 do
      IO.puts("High temperature detected")
    else
      if celsius_temp < 0 do
        IO.puts("Low temperature detected")
      else
        IO.puts("Temperature is within normal range")
      end
    end
  end
end

TemperatureAnalyzer.analyze_temperature(86, "Fahrenheit")
TemperatureAnalyzer.analyze_temperature(90, "Celsius")
TemperatureAnalyzer.analyze_temperature(-10, "Celsius")

defmodule TemperatureAnalyzerR do
  def analyze_temperature(temperature, "Fahrenheit") do
    celsius_temp = (temperature - 32) * 5 / 9
    analyze_temperature_celsius(celsius_temp)
  end
  def analyze_temperature(temperature, "Celsius") do
    analyze_temperature_celsius(temperature)
  end
  def analyze_temperature(_temperature, _unit) do
    raise "Invalid temperature unit"
  end
  def analyze_temperature_celsius(temp) when temp > 30 do
    IO.puts("High temperature detected")
  end
  def analyze_temperature_celsius(temp) when temp < 0 do
    IO.puts("Low temperature detected")
  end
  def analyze_temperature_celsius(_temp) do
    IO.puts("Temperature is within normal range")
  end
end


TemperatureAnalyzer.analyze_temperature(86, "Fahrenheit")
TemperatureAnalyzer.analyze_temperature(90, "Celsius")
TemperatureAnalyzer.analyze_temperature(-10, "Celsius")
