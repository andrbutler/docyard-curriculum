defmodule HelloWorldWeb.PageController do
  use HelloWorldWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :hello, layout: false)
  end
end
