defmodule UserApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :age, :integer
      add :e_mail, :string
      add :mbl_number, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
