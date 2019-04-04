require Porcelain

defmodule Atlanta.TFApply do
  use Que.Worker, concurrency: 4

  def perform(_payload) do
    :timer.sleep(:timer.seconds(10))
    IO.puts("HI")
    IO.puts(Porcelain.shell("echo whatss good").out)
  end

  def on_success(_payload) do
    IO.puts("Success")
  end

  def on_failure(_, _error) do
    IO.puts("Failure")
  end
end
