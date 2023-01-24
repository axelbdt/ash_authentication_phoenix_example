# AshAuthPhoenixExample

The simplest password authentication with Ash Framework, Ash Authentication and Phoenix (1.7).

Resources this example was built on:

## Setup Ash, AshPostgres, Phoenix 
- [Phoenix Instructions...](https://ash-hq.org/docs/guides/ash/2.5.8/topics/phoenix)
- [... will tell you to install Ash...](https://ash-hq.org/docs/guides/ash/latest/get-started)
- [... and AshPostgres](https://ash-hq.org/docs/guides/ash_postgres/1.3.3/tutorials/get-started-with-postgres)

## Setup AshAuthentication
- [Instructions from readme to add auth to user](https://github.com/team-alembic/ash_authentication#usage)
- [Formatter instructions](https://ash-hq.org/docs/guides/ash_authentication/latest/integrating-ash-authentication-and-phoenix)
- [citext extension should be installed](https://hexdocs.pm/ash_postgres/AshPostgres.Repo.html#c:installed_extensions/0)

## Setup AshAuthenticationPhoenix
- [Instructions from README](https://ash-hq.org/docs/ash_authentication_phoenix/latest)
- [You should create a Controller (unclear from README)](https://team-alembic.github.io/ash_authentication_phoenix/AshAuthentication.Phoenix.Controller.html)
- [Remember to define an appropriate template...](http://ash-hq.org/docs/module/ash_authentication_phoenix/latest/ashauthentication-phoenix-controller), but don't copy the code from this page (typo : `Routes.path_path`)
- [For phoenix 1.7 reactivate Router helpers](https://elixirforum.com/t/does-router-helpers-module-remain-accessible-in-phoenix-1-7/53364)


