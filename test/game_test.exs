defmodule ExMonGameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("PlayerTest", :kick, :punch, :heal)
      computer = Player.build("ComputerTest", :kick, :punch, :heal)

      assert {:ok, _pid} = Game.start(computer, player)
    end
  end

  describe "info/0" do
    test "returns the current game state" do
      player = Player.build("PlayerTest", :kick, :punch, :heal)
      computer = Player.build("ComputerTest", :kick, :punch, :heal)

      Game.start(computer, player)

      expected_result = %{
        computer: %Player{
          life: 100,
          moves: %{move_average: :punch, move_heal: :heal, move_random: :kick},
          name: "ComputerTest"
        },
        player: %Player{
          life: 100,
          moves: %{move_average: :punch, move_heal: :heal, move_random: :kick},
          name: "PlayerTest"
        },
        status: :started,
        turn: :player
      }

      assert expected_result == Game.info()
    end
  end

  describe "update/1" do
    test "returns the game state updated" do
      player = Player.build("PlayerTest", :kick, :punch, :heal)
      computer = Player.build("ComputerTest", :kick, :punch, :heal)

      Game.start(computer, player)

      new_state = %{
        computer: %Player{
          life: 86,
          moves: %{move_average: :punch, move_heal: :heal, move_random: :kick},
          name: "ComputerTest"
        },
        player: %Player{
          life: 84,
          moves: %{move_average: :punch, move_heal: :heal, move_random: :kick},
          name: "PlayerTest"
        },
        status: :started,
        turn: :player
      }

      expected_state = %{new_state | turn: :computer, status: :continue}

      assert :ok == Game.update(new_state)
      assert expected_state == Game.info()
    end
  end
end
