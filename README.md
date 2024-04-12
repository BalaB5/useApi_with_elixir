# UserApi

Install the Elixir programming language.

Install the Phoenix project 

    mix archive.install hex phx_new 
  
Create your project:

    mix phx.new user_api

* creating user_api/lib/user_api/application.ex
* creating user_api/lib/user_api.ex
* creating user_api/lib/user_api_web/controllers/error_json.ex
* creating user_api/lib/user_api_web/endpoint.ex
* creating user_api/lib/user_api_web/router.ex
* creating user_api/lib/user_api_web/telemetry.ex
* creating user_api/lib/user_api_web.ex
* creating user_api/mix.exs
* creating user_api/README.md
* creating user_api/.formatter.exs
* creating user_api/.gitignore
* creating user_api/test/support/conn_case.ex
* creating user_api/test/test_helper.exs
* creating user_api/test/user_api_web/controllers/error_json_test.exs
* creating user_api/lib/user_api/repo.ex
* creating user_api/priv/repo/migrations/.formatter.exs
* creating user_api/priv/repo/seeds.exs
* creating user_api/test/support/data_case.ex
* creating user_api/lib/user_api_web/controllers/error_html.ex
* creating user_api/test/user_api_web/controllers/error_html_test.exs
* creating user_api/lib/user_api_web/components/core_components.ex
* creating user_api/lib/user_api_web/controllers/page_controller.ex
* creating user_api/lib/user_api_web/controllers/page_html.ex
* creating user_api/lib/user_api_web/controllers/page_html/home.html.heex
* creating user_api/test/user_api_web/controllers/page_controller_test.exs
* creating user_api/lib/user_api_web/components/layouts/root.html.heex
* creating user_api/lib/user_api_web/components/layouts/app.html.heex
* creating user_api/lib/user_api_web/components/layouts.ex
* creating user_api/priv/static/images/logo.svg
* creating user_api/lib/user_api/mailer.ex
* creating user_api/lib/user_api_web/gettext.ex
* creating user_api/priv/gettext/en/LC_MESSAGES/errors.po
* creating user_api/priv/gettext/errors.pot
* creating user_api/priv/static/robots.txt
* creating user_api/priv/static/favicon.ico
* creating user_api/assets/js/app.js
* creating user_api/assets/vendor/topbar.js
* creating user_api/assets/css/app.css
* creating user_api/assets/tailwind.config.js

Fetch and install dependencies? [Yn] y
* running mix deps.get
* running mix assets.setup
* running mix deps.compile    

To start your Phoenix server:

We are almost there! The following steps are missing:

    $ cd user_api

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

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

    scope "/api", HelloWeb do
      pipe_through :api
      resources "/users", UserController, except: [:new, :edit]
    end


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
