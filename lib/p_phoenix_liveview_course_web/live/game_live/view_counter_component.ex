defmodule PPhoenixLiveviewCourseWeb.GameLive.ViewCounterComponent do
  use Phoenix.Component

  attr :views, :integer, required: true
  attr :class, :string, default: ""


  def render(assigns) do
    ~H"""
    <div class={"view-counter-container #{@class}"}>
      <div class="view-status-dot">
        <span class="ping"></span>
        <span class="dot"></span>
      </div>

      <div class="view-number-wrapper">
        <span id={"view-animate-#{@views}"} class="view-number-text">
          {format_views(@views)}
        </span>
      </div>

      <span class="view-label">Views</span>
    </div>
    """
  end

  defp format_views(n) when n >= 1_000_000, do: "#{Float.round(n / 1_000_000, 1)}M"
  defp format_views(n) when n >= 1_000, do: "#{Float.round(n / 1_000, 1)}K"
  defp format_views(n), do: "#{n}"
end
