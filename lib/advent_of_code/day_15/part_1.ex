defmodule AdventOfCode.Day15.Part1 do
  # public functions

  @doc """
  Takes a input sequence and a number of rounds to compute
  and returns the last number in the sequence
  """
  @spec run(list(integer), integer) :: integer
  def run(sequence, rounds = 2020) do
    init_state(sequence)
    |> Stream.unfold(&take_turn/1)
    |> Stream.drop(rounds - length(sequence) - 1)
    |> Enum.take(1)
    |> hd()
  end

  @spec take_turn({integer, map(), integer}) :: {integer, {integer, map(), integer}}
  def take_turn({turn, spoken, last}) do
    case Map.get(spoken, last) do
      nil ->
        spoken = Map.put(spoken, last, turn)
        {0, {turn + 1, spoken, 0}}

      found ->
        result = turn - found
        spoken = Map.put(spoken, last, turn)
        {result, {turn + 1, spoken, result}}
    end
  end

  # private functions

  defp init_state(sequence) do
    Enum.reduce(sequence, {0, %{}, 0}, &calc_state/2)
  end

  defp calc_state(num, {turn, spoken, _}) do
    next_turn = turn + 1
    {next_turn, Map.put(spoken, num, next_turn), num}
  end
end
