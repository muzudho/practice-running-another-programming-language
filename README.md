# practice-running-another-programming-language

別のプログラム言語を実行する練習

# Hello, world!!

## Python

### New project

👇 特にコマンドは無いので、以下のファイルを新規作成しろ  

📝 `src/python_example/i_am.py`:  

```py
if __name__ == '__main__':
    print("Hello, world!! I am Python!")
```

👇 試しに実行しろ  

Input:  

```shell
cd src/python_example

python i_am.py
```

Output:  

```plaintext
Hello, world!! My name is Python!
```

## Elixir

### New project

```shell
cd src

mix new elixir_example
```

👇 以下の既存ファイルの、既存箇所を編集  

📝 `src/elixir_example/mix.exs`:  

```elixir
  # ...
  def application do
    [
      # ...
      
      ,

      # 実行するモジュール
      mod: {ElixirExample, []}
    ]
  end

```

👇 以下の既存ファイルを編集（きちんとした書き方ではない）  

📝 `src/elixir_example/lib/elixir_example.ex`:  

```elixir
defmodule ElixirExample do
  @moduledoc """
  Documentation for `ElixirExample`.
  """

  @doc """
  Hello world.

  ## Examples

      mix run

  """
  def start(_type, _args) do
    IO.puts("Hello, world!! I am Elixir!")
    {:ok, self()}
  end
end
```

👇 試しに実行しろ  

Input:  

```shell
cd src/elixir_example

mix run
```

Output:  

```plaintext
Compiling 1 file (.ex)
Hello, world!! I am Elixir!
```

# Run a process

## Elixier

### New project

```shell
cd src

mix new from_elixir
```

👇 以下の既存ファイルの、既存箇所を編集  

📝 `src/from_elixir/mix.exs`:  

```elixir
  # ...
  def application do
    [
      # ...
      
      ,

      # 実行するモジュール
      mod: {FromElixir, []}
    ]
  end
```

👇 以下の既存ファイルを編集（きちんとした書き方ではない）  

📝 `src/from_elixir/lib/from_elixir.ex`:  

```elixir
defmodule FromElixir do
  @moduledoc """
  Documentation for `FromElixir`.
  """

  @doc """
  Call another program.

  ## Examples

      mix run

  """
  def start(_type, _args) do
    {_output, _status} = System.cmd("python", ["i_am.py"])
    {:ok, self()}
  end
end
```

👇 試しに実行しろ  

Input:  

```shell
cd src/from_elixir

mix run
```
