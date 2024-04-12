defmodule UserApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :age, :integer
    field :e_mail, :string
    field :mbl_number, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age, :e_mail, :mbl_number])
    |> validate_required([:name, :age, :e_mail, :mbl_number])
  end
end
