defmodule Workshop.TransporterVehicles.TransporterVehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transporter_vehicles" do
    # field :transporter_id, :integer
    # field :vehicle_id, :integer

    belongs_to :transporter, Transporter, foreign_key: :transporter_id, references: :id
    belongs_to :vehicle, Vehicle, foreign_key: :vehicle_id, references: :id

    timestamps()
  end

  @doc false
  def changeset(transporter_vehicle, attrs) do
    transporter_vehicle
    |> cast(attrs, [:transporter_id, :vehicle_id])
    |> validate_required([:transporter_id, :vehicle_id])
  end
end
