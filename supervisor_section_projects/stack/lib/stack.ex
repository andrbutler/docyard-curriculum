defmodule Stack do
  @moduledoc """
  Documentation for `Stack`.
  creates a supervisior that runs a stack as a child process. this child stack will throw an error when it's pop method is called, thus causing the
  supervisior to restart the process.
  """
use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call(:pop, _from, state) do
    [head | tail] = state
    {:reply, head, tail}
  end

  @impl true
  def handle_call({:push, element}, _from, state) do
    new_state = [element | state]
    {:reply, new_state, new_state}
  end

  def start() do
    children = [
      {Stack, []}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
  
end


