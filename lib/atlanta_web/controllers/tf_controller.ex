require Atlanta
require Que

defmodule AtlantaWeb.TFController do
  use AtlantaWeb, :controller

  def apply(conn, params) do
    Que.add(Atlanta.TFApply, params)
    text(conn, "Ok")
  end
end
