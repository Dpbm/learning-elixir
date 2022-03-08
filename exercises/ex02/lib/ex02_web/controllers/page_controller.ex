defmodule Ex02Web.PageController do
  use Ex02Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
