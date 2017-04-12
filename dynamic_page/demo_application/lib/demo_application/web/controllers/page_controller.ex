defmodule DemoApplication.Web.PageController do
  use DemoApplication.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
