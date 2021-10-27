defmodule AdventOfCode.Day15.Part1 do
  @moduledoc """
  Solving Part 1 of Day 15
  TODO: add description
  """

  # data structures

  defmodule Recitations do
    #    @typedoc """
    #    A hashmap of recitations spoken
    #    """
    defstruct turn: 0, spoken: %{}, last: 0
  end

  # public functions

  @doc """
  Takes a input sequence and a number of runs to compute
  """
  @spec run(list(integer), integer) :: integer
  def run(sequence, runs = 2020) do
    IO.inspect(init_state(sequence))
    #    for i <- 1..runs do
    #
    #    end
  end

  # private functions

  def init_state(sequence) do
    sequence
    |> Enum.reduce(
      %Recitations{},
      fn num, %{turn: turn, spoken: spoken} ->
        turn = turn + 1
        %Recitations{turn: turn, spoken: Map.put(spoken, num, turn), last: num}
      end
    )
  end
end
