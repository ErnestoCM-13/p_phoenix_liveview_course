defmodule PPhoenixLiveviewCourseWeb.GameComponentsTest do
  use PPhoenixLiveviewCourseWeb.ConnCase
  alias PPhoenixLiveviewCourseWeb.GameLive.GameComponent

  describe "GameComponent.tomatoe_button" do
    test "should render the right template" do
      assigns = %{type: :bad, count: 0, game_id: 1, on_tomatoe: "on_tomatoe"}

      template = ~H"""
      <GameComponent.tomatoe_button
        type={@type}
        count={@count}
        game_id={@game_id}
        on_tomatoe={@on_tomatoe}
      />
      """

      html = rendered_to_string(template)

      assert html ==
               "<button phx-click=\"on_tomatoe\" phx-value-type=\"bad\" phx-value-count=\"0\" class=\"tomatoe-button\">\n  <span>0</span>\n  <span>🍎</span>\n</button>"
    end

    test "should render the tomate based on the type" do
      assigns = %{type: :bad, count: 0, game_id: 1, on_tomatoe: "on_tomatoe"}

      template = ~H"""
      <GameComponent.tomatoe_button
        type={@type}
        count={@count}
        game_id={@game_id}
        on_tomatoe={@on_tomatoe}
      />
      """

      html = rendered_to_string(template)

      assert html =~ "🍎"
      refute html =~ "🍏"
    end
  end
end
