defmodule ElixirNewbieWeb.Components.Footer do
  @moduledoc """
  Footer component
  """
  use Surface.LiveComponent
  alias ElixirNewbieWeb.BlogList
  alias ElixirNewbieWeb.Endpoint
  alias ElixirNewbieWeb.HomeLive
  alias ElixirNewbieWeb.PodcastList
  alias ElixirNewbieWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~F"""
    <nav class="footer bg-footer">
      <button
        class={
        "footer_link footer_link--home "
        <> "#{assigns.socket.view === ElixirNewbieWeb.HomeLive  && " text-secondary" || "text-white"}"
        }
        :on-click="home"
        >
        <i class="fas fa-home"></i>
        Home
        </button>
      <button
        class={
        "footer_link footer_link--blog "
        <> "#{assigns.socket.view === ElixirNewbieWeb.BlogList  && " text-secondary" || "text-white"}"
        }
        :on-click="blog"
        >
        <i class="fas fa-blog"></i>
        Blog
        </button>
      <button
        class={
        "footer_link footer_link--podcast "
        <> "#{assigns.socket.view === ElixirNewbieWeb.PodcastList  && " text-secondary" || "text-white"}"
        }
        :on-click="podcast"
       >
      <i class="fas fa-podcast"></i>
       podcast
       </button>
    </nav>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("home", _params, socket) do
    {:noreply, push_redirect(socket, to: Routes.live_path(Endpoint, HomeLive))}
  end

  def handle_event("blog", _params, socket) do
    {:noreply, push_redirect(socket, to: Routes.live_path(Endpoint, BlogList))}
  end

  def handle_event("podcast", _params, socket) do
    {:noreply, push_redirect(socket, to: Routes.live_path(Endpoint, PodcastList))}
  end
end