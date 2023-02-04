defmodule AshAuthPhoenixExample.Accounts.Registry do
  use Ash.Registry,
    extensions: [
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry AshAuthPhoenixExample.Accounts.User
    entry AshAuthPhoenixExample.Accounts.Token
  end
end
