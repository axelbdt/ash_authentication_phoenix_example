defmodule AshAuthPhoenixExample.Repo do
  use AshPostgres.Repo, otp_app: :ash_auth_phoenix_example

  def installed_extensions do
    ["citext"]
  end
end
