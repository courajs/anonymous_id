defmodule AnonymousIdTest do
  use ExUnit.Case
  use Plug.Test
  doctest AnonymousId

  test "it assigns a pre-existing user_id to the connection" do
    opts = Plug.Session.init(store: Plug.ProcessStore, key: "foobar")
    conn = conn(:get, "/")
    |> Plug.Session.call(opts)
    |> IO.inspect
    |> Plug.Conn.fetch_session
    |> IO.inspect
  end
end
