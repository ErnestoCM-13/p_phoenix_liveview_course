defmodule PPhoenixLiveviewCourse.Rating.Tomatoes do
  use Ecto.Schema
  import Ecto.Changeset
  alias PPhoenixLiveviewCourse.Catalog.Game

  schema "tomatoes" do
    field :bad, :integer
    field :good, :integer
    belongs_to :game, Game

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(tomatoes, attrs) do
    tomatoes
    |> cast(attrs, [:good, :bad, :game_id])
    |> validate_required([:good, :bad])
    |> unique_constraint(:game_id)
  end
end
