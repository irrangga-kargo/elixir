defmodule WorkshopWeb.VehicleView do
  use WorkshopWeb, :view
  alias WorkshopWeb.VehicleView

  def render("index.json", %{vehicles: vehicles}) do
    %{data: render_many(vehicles, VehicleView, "vehicle.json")}
  end

  def render("show.json", %{vehicle: vehicle}) do
    %{data: render_one(vehicle, VehicleView, "vehicle.json")}
  end

  def render("vehicle.json", %{vehicle: vehicle}) do
    %{
      id: vehicle.id,
      id: vehicle.id,
      license_plate: vehicle.license_plate
    }
  end
end
