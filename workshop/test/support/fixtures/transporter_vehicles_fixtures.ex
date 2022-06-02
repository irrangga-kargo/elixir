defmodule Workshop.TransporterVehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Workshop.TransporterVehicles` context.
  """

  @doc """
  Generate a transporter_vehicle.
  """
  def transporter_vehicle_fixture(attrs \\ %{}) do
    {:ok, transporter_vehicle} =
      attrs
      |> Enum.into(%{
        transporter_id: 42,
        vehicle_id: 42
      })
      |> Workshop.TransporterVehicles.create_transporter_vehicle()

    transporter_vehicle
  end
end
