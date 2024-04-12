defmodule UserApi.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `UserApi.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        age: 42,
        e_mail: "some e_mail",
        mbl_number: 42,
        name: "some name"
      })
      |> UserApi.Accounts.create_user()

    user
  end
end
