defmodule PPhoenixLiveviewCourseWeb.GameLive.Tomatometer do
  use PPhoenixLiveviewCourseWeb, :live_component
  alias PPhoenixLiveviewCourseWeb.GameLive.GameComponent

  @impl true
  def render(assigns) do
    ~H"""
    <div class="flex justify-center items-center gap-4">
      <GameComponent.tomatoe_button
        type={:good}
        count={@tomatoes.good}
        game_id={@game.id}
        on_tomatoe="on_tomatoe"
      />
      <GameComponent.tomatoe_button
        type={:bad}
        count={@tomatoes.bad}
        game_id={@game.id}
        on_tomatoe="on_tomatoe"
      />
      <GameComponent.tomatoes_score good={@tomatoes.good} bad={@tomatoes.bad} />
    </div>
    """
  end
end
