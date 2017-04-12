defmodule MultiContainerApplication.Accounts.User do
  use Ecto.Schema

  schema "accounts_users" do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :number_of_pets, :integer

    timestamps()
  end
end
