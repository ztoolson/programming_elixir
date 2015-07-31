defmodule WeatherHistory do
  def for_location([], _target_loc), do: []
  def for_location([ [time, target_loc, temp, rain] | tail ], target_loc) do
    [ [time, target_loc, temp, rain] | for_location(tail, target_loc) ]
  end
  def for_location([ _ | tail], target_loc), do: for_location(tail, target_loc)

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

result = WeatherHistory.for_location(WeatherHistory.test_data, 27)
IO.puts inspect result
