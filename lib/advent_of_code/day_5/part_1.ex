defmodule AdventOfCode.Day5.Part1 do
  alias AdventOfCode.Day5

  def parse_boarding_pass(boarding_pass) do
    boarding_pass
    |> String.graphemes()
    |> Enum.map(fn
      "B" -> 1
      "F" -> 0
      "R" -> 1
      "L" -> 0
    end)
    |> binary_to_decimal()
  end

  def binary_to_decimal(list_of_1_and_0) do
    list_of_1_and_0
    |> Enum.join()
    |> String.to_integer(2)
  end

  def run(input_file) do
    input_file
    |> Day5.parse_file()
    |> Enum.map(&parse_boarding_pass/1)
    |> Enum.max()
  end
end
