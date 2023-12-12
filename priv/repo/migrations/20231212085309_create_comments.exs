defmodule Realworld.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :text, null: false
      add :article_id, references(:articles, on_delete: :nothing), null: false

      timestamps(type: :utc_datetime)
    end

    create index(:comments, [:article_id])
  end
end
