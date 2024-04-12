# UserApi

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

>>mix phx.gen.json Accounts User users name:string age:integer e_mail:string mbl_number:integer

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
>>mix ecto.migrate

06:49:09.313 [info] == Running 20240412011829 UserApi.Repo.Migrations.CreateUsers.change/0 forward

06:49:09.328 [info] create table users

06:49:09.388 [info] == Migrated 20240412011829 in 0.0s