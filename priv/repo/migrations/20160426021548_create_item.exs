defmodule Frostgrave.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :magic, :boolean, default: false
      add :vault_only, :boolean, default: false
      add :purchase_price, :integer

      timestamps
    end

  end
end
