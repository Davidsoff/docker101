defmodule MultiContainerApplication.Repo.Migrations.CreateMultiContainerApplication.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users) do
      add :name, :string
      add :email, :string
      add :bio, :string
      add :number_of_pets, :integer

      timestamps()
    end

  end
end
