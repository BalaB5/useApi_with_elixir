defmodule UserApiWeb.UserJSON do
  alias UserApi.Accounts.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      age: user.age,
      e_mail: user.e_mail,
      mbl_number: user.mbl_number
    }
  end
end
