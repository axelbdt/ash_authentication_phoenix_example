defmodule AshAuthPhoenixExample.Repo.Migrations.AddEmailAndPasswordToUsers do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:users) do
      add :email, :citext, null: false
      add :hashed_password, :text, null: false
    end

    create unique_index(:users, [:email], name: "users_unique_email_index")
  end

  def down do
    drop_if_exists unique_index(:users, [:email], name: "users_unique_email_index")

    alter table(:users) do
      remove :hashed_password
      remove :email
    end
  end
end