defmodule MultiContainerApplication.Web.PageController do
  use MultiContainerApplication.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
