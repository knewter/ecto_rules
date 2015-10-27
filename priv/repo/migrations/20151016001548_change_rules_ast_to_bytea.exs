defmodule EctoRules.Repo.Migrations.ChangeRulesAstToBytea do
  use Ecto.Migration

  def change do
    alter table(:rules) do
      remove :ast
      add :ast, :bytea
    end
  end
end
