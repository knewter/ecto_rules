defmodule EctoRulesTest do
  use ExUnit.Case
  doctest EctoRules
  alias EctoRules.Repo
  alias EctoRules.Rule

  test "creating a rule" do
    rule_struct = %Rule{
      name: "a rule",
      ast: {:if, []}
    }
    {:ok, rule} = Repo.insert(rule_struct)
    assert is_integer(rule.id)
    rule = Repo.get(Rule, rule.id)
    assert {:if, []} = rule.ast
  end
end
