defmodule AdventOfCodeTest.Day15Test do
  use ExUnit.Case

  alias AdventOfCode.Day15.Part1

  describe "day 15" do
    test "part 1" do
      assert Part1.run([1, 3, 2], 2020) == 1
      #      assert Part1.run([2, 1, 3], 2020) == 10
      #      assert Part1.run([0, 8, 15, 2, 12, 1, 4], 2020) == 123
    end

    test "part 2" do
    end
  end
end
