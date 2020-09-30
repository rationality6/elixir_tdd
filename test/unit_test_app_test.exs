defmodule UnitTestAppTest do
  use ExUnit.Case
  doctest UnitTestApp

  test "greets the world" do
    assert UnitTestApp.hello() == :world
  end
end
