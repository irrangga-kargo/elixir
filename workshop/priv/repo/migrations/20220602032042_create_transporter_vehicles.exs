defmodule Workshop.Repo.Migrations.CreateTransporterVehicles do
  use Ecto.Migration

  def change do
    create table(:transporter_vehicles,  primary_key: false) do
      add :transporter_id, :integer, primary_key: false
      add :vehicle_id, :integer,  primary_key: false

      timestamps()
    end
  end
end
