defmodule AppStarterKitWeb.PageController do
  use AppStarterKitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
