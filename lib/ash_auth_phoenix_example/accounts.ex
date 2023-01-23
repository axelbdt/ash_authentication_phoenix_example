defmodule AshAuthPhoenixExample.Accounts do
  use Ash.Api

  resources do
    registry AshAuthPhoenixExample.Accounts.Registry
  end
end
