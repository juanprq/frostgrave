defmodule Frostgrave.ItemTest do
  use Frostgrave.ModelCase

  alias Frostgrave.Item

  @valid_attrs %{magic: true, purchase_price: 42, vault_only: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Item.changeset(%Item{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Item.changeset(%Item{}, @invalid_attrs)
    refute changeset.valid?
  end
end
