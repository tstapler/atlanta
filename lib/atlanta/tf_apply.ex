require System

defmodule Atlanta.TFApply do
  use Que.Worker

  def perform(_payload) do
    :timer.sleep(:timer.seconds(10))
    IO.puts("HI")
    IO.puts(elem(System.cmd("echo", ["hi"]), 0))
  end

  def on_success(_payload) do
    IO.puts("Success")
  end

  def on_failure(_, _error) do
    IO.puts("Failure")
  end
end
