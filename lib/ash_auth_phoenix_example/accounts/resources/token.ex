defmodule AshAuthPhoenixExample.Accounts.Token do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshAuthentication.TokenResource]

  token do
    api AshAuthPhoenixExample.Accounts
  end

  postgres do
    table "tokens"
    repo AshAuthPhoenixExample.Repo
  end
end
