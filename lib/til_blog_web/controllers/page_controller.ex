defmodule TilBlogWeb.PageController do
  use TilBlogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
