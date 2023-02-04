defmodule AshAuthPhoenixExample.Accounts.User do
  use Ash.Resource,
    extensions: [AshAuthentication],
    data_layer: AshPostgres.DataLayer

  actions do
    defaults [:create]
  end

  attributes do
    uuid_primary_key :id
    attribute :email, :ci_string, allow_nil?: false
    attribute :hashed_password, :string, allow_nil?: false, sensitive?: true
  end

  authentication do
    api AshAuthPhoenixExample.Accounts

    strategies do
      password :password do
        identity_field :email
        hashed_password_field :hashed_password
      end
    end

    tokens do
      enabled? true
      token_resource AshAuthPhoenixExample.Accounts.Token

      signing_secret(
        Application.compile_env(:ash_auth_phoenix_example, AshAuthPhoenixExampleWeb.Endpoint)[
          :secret_key_base
        ]
      )
    end
  end

  identities do
    identity :unique_email, [:email]
  end

  postgres do
    table "users"
    repo AshAuthPhoenixExample.Repo
  end
end
