defmodule Realworld.Blogs.Article do
  use Ecto.Schema
  import Ecto.Changeset

  alias Realworld.Blogs.Comment

  schema "articles" do
    field :title, :string
    field :body, :string
    has_many :comments, Comment, on_delete: :delete_all

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
