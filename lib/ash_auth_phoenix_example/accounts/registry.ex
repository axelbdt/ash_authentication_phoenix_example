defmodule AshAuthPhoenixExample.Accounts.Registry do
  use Ash.Registry,
    extensions: [
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry AshAuthPhoenixExample.Accounts.User
  end
end
