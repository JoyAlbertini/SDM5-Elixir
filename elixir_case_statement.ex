
defmodule EnvironmentAnalyzer do
  def analyze_conditions(temperature, pressure) do
    if temperature > 30 and pressure < 1000 do
      IO.puts("High temperature and low pressure alert")
    else
      if temperature < 0 and pressure > 1020 do
        IO.puts("Low temperature and high pressure alert")
      else
        if temperature > 30 or temperature < 0 do
          IO.puts("Temperature alert (either high or low)")
        else
          if pressure < 1000 or pressure > 1020 do
            IO.puts("Pressure alert (either low or high)")
          else
            IO.puts("Normal conditions")
          end
        end
      end
    end
  end
end


defmodule EnvironmentAnalyzerR do
  def analyze_conditions(temperature, pressure) do
    case {temperature, pressure} do
      {temp, press} when temp > 30 and press < 1000 ->
        IO.puts("High temperature and low pressure alert")

      {temp, press} when temp < 0 and press > 1020 ->
        IO.puts("Low temperature and high pressure alert")

      {temp, press} when temp > 30 or temp < 0 ->
        IO.puts("Temperature alert (either high or low)")

      {temp, press} when press < 1000 or press > 1020 ->
        IO.puts("Pressure alert (either low or high)")
      _ ->
        IO.puts("Normal conditions")
    end
  end
end


EnvironmentAnalyzer.analyze_conditions(35, 990)
EnvironmentAnalyzerR.analyze_conditions(35, 990)
