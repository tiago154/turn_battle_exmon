defmodule ExMon.Player do
  @required_keys [:life, :moves, :name]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_random, move_average, move_heal) do
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_average: move_average,
        move_heal: move_heal,
        move_random: move_random
      },
      name: name
    }
  end
end
