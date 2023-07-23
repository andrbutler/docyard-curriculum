defmodule HelloWorld do
  @moduledoc """
  Documentation for `HelloWorld`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello()
      :world

  """
  def hello do
    # name = HelloWorld.Name.random()

    name = Faker.Person.first_name()

    greeting =
      if name == "Mark" do
        "Oh, Hi"
      else
        "Hello,"
      end

    "#{greeting} #{name}."
  end
end
