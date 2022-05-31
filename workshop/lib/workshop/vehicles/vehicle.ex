defmodule Workshop.Vehicles.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicles" do
    # field :id, :integer
    field :license_plate, :string

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:id, :license_plate])
    |> validate_required([:id, :license_plate])
  end
end
