defmodule AshAuthPhoenixExample.Accounts.User do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  actions do
    defaults [:create]
  end

  attributes do
    uuid_primary_key :id
  end

  postgres do
    table "users"
    repo AshAuthPhoenixExample.Repo
  end
end
