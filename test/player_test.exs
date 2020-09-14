defmodule ExMon.PlayerTest do
  use ExUnit.Case

  alias ExMon.Player

  describe "build/4" do
    test "create a player" do
      expected_result = %ExMon.Player{
        life: 100,
        moves: %{move_average: :b, move_heal: :c, move_random: :a},
        name: "test"
      }

      assert expected_result == Player.build("test", :a, :b, :c)
    end
  end
end
