defmodule EctoRules.Repo.Migrations.CreateRules do
  use Ecto.Migration

  def change do
    create table(:rules) do
      add :name, :string
      add :ast, :text
    end
  end
end
