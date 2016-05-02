defmodule Frostgrave.Item do
  use Frostgrave.Web, :model

  schema "items" do
    field :magic, :boolean, default: false
    field :vault_only, :boolean, default: false
    field :purchase_price, :integer

    timestamps
  end

  @required_fields ~w(magic vault_only purchase_price)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
