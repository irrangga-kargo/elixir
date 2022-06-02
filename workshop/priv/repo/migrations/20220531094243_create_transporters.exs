defmodule Workshop.Repo.Migrations.CreateTransporters do
  use Ecto.Migration

  def change do
    create table(:transporters, primary_key: false) do
      add :id, :integer, primary_key: true
      add :name, :string
      add :phone_number, :string
      add :npwp_number, :string
      add :status, :string
      add :vehicle_id, :integer

      timestamps()
    end
  end
end
