defmodule AtlantaWeb.PageController do
  use AtlantaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
