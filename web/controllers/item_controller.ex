defmodule Frostgrave.ItemController do
  use Frostgrave.Web, :controller

  alias Frostgrave.Item

  def index(conn, _params) do
    items = Repo.all(Item)
    render(conn, "index.html", items: items)
  end
end
