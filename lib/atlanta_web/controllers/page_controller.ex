require Atlanta
require Que

defmodule AtlantaWeb.PageController do
  use AtlantaWeb, :controller

  def index(conn, _params) do
    Que.add(Atlanta.TFApply, NONE)
    render(conn, "index.html")
  end
end
