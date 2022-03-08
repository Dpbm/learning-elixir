defmodule Ex02Web.TestController do
  use Ex02Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def hello(conn, %{"name" => name}) do
    render(conn, "sayMyName.html", name: name)
  end
end
