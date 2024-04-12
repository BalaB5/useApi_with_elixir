# UserApi

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

------------------------------------------------------------------------------------
## Create user api 

    mix phx.gen.json Accounts User users name:string age:integer e_mail:string mbl_number:integer

* creating lib/user_api_web/controllers/user_controller.ex
* creating lib/user_api_web/controllers/user_json.ex
* creating lib/user_api_web/controllers/changeset_json.ex
* creating test/user_api_web/controllers/user_controller_test.exs
* creating lib/user_api_web/controllers/fallback_controller.ex
* creating lib/user_api/accounts/user.ex
* creating priv/repo/migrations/20240412011829_create_users.exs
* creating lib/user_api/accounts.ex
* injecting lib/user_api/accounts.ex
* creating test/user_api/accounts_test.exs
* injecting test/user_api/accounts_test.exs
* creating test/support/fixtures/accounts_fixtures.ex
* injecting test/support/fixtures/accounts_fixtures.ex

Add the resource to your :api scope in lib/user_api_web/router.ex:

    resources "/users", UserController, except: [:new, :edit]


Remember to update your repository by running migrations:

    $ mix ecto.migrate
------------------------------------------------------------------------------------
## Migrate updated to database  

    mix ecto.migrate

06:49:09.313 [info] == Running 20240412011829 UserApi.Repo.Migrations.CreateUsers.change/0 forward

06:49:09.328 [info] create table users

06:49:09.388 [info] == Migrated 20240412011829 in 0.0s

------------------------------------------------------------------------------------

http://127.0.0.1:4000/api/users/

------------------------------------------------------------------------------------
## Reference

  * Install Elixir on Windows : https://medium.com/@eugencic/installing-elixir-on-windows-a-step-by-step-guide-b68c7cb023e2
  * Elixir Tutorial : https://www.tutorialspoint.com/elixir/index.htm
  * Phoenix FrameworkInstallation : https://hexdocs.pm/phoenix/installation.html
  * Phoenix Official website: https://www.phoenixframework.org/
  * PostgreSQL Tutorial : https://www.w3schools.com/postgresql/index.php

  * JSON and APIs: https://hexdocs.pm/phoenix/json_and_apis.html  
  * PhoenixSwagger: https://hexdocs.pm/phoenix_swagger/getting-started.html
  * CRUD To Do List App built with Phoenix and Elixir: https://medium.com/@spenserhuang/crud-to-do-list-app-built-with-phoenix-and-elixir-7e916565b82

  * DB Connection Error : https://stackoverflow.com/questions/42038548/dbconnection--tcp-connect-localhost5432-connection-refused
  * Restart PostgreSQL : https://www.postgresqltutorial.com/postgresql-administration/restart-postgresql-windows/
