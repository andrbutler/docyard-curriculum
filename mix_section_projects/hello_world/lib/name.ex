defmodule HelloWorld.Name do
  def random do
    Enum.random(["Peter", "Bruce", "Tony", "Andrew", "Mark"])
  end
end
