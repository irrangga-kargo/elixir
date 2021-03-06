defmodule Workshop.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles, primary_key: false) do
      add :id, :integer, primary_key: true
      add :license_plate, :string
      add :transporter_id, :integer

      timestamps()
    end
  end
end
