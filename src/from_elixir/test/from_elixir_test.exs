defmodule FromElixirTest do
  use ExUnit.Case
  doctest FromElixir

  test "greets the world" do
    assert FromElixir.hello() == :world
  end
end
