defmodule FromElixir do
  @moduledoc """
  Documentation for `FromElixir`.
  """

  @doc """
  Call another program.

  ## (Examples)

      mix run
      Hello, world!! I am a Python!
      finished. status:0

  """
  def start(_type, _args) do
    {_output, status} = System.cmd("python", ["i_am.py"],
      [
        cd: "../python_example",
        into: IO.stream(:stdio, :line)
      ])
    IO.puts("finished. status:#{status}")

    {:ok, self()}
  end
end
