defmodule AshAuthPhoenixExample.Accounts.User do
  use Ash.Resource

  actions do
    defaults [:create]
  end

  attributes do
    uuid_primary_key :id
  end
end
