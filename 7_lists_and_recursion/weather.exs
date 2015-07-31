defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([ [time, 27, temp, rain] | tail ]) do
    [ [time, 27, temp, rain] | for_location_27(tail) ]
  end
  def for_location_27([ _ | tail]), do: for_location_27(tail)

  def test_data do
    [
      [136622560, 26, 15, 0.125],
      [136622561, 27, 15, 0.45],
      [136622562, 28, 21, 0.25],
      [136622563, 27, 19, 0.081],
      [136622564, 28, 17, 0.468],
    ]
  end
end

result = WeatherHistory.for_location_27(WeatherHistory.test_data)
IO.puts inspect result

