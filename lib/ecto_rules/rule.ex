defmodule EctoRules.Rule do
  use Ecto.Model

  defmodule TermType do
    @behaviour Ecto.Type

    def type, do: :bytea

    def cast(term = {expression_type, args}) when is_atom(expression_type) and is_list(args) do
      term
    end
    def cast(_), do: :error

    def dump(term = {expression_type, args}) when is_atom(expression_type) and is_list(args) do
      {:ok, :erlang.term_to_binary(term)}
    end
    def dump(_), do: :error

    def load(binary) when is_binary(binary) do
      {:ok, :erlang.binary_to_term(binary)}
    end
  end

  schema "rules" do
    field :name, :string
    field :ast, EctoRules.Rule.TermType
  end
end
