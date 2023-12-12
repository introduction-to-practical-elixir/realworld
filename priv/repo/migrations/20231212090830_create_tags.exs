defmodule Realworld.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :tag, :string, null: false

      timestamps(type: :utc_datetime)
    end

    create unique_index(:tags, [:tag])
  end
end
