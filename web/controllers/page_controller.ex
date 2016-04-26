defmodule Frostgrave.PageController do
  use Frostgrave.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
