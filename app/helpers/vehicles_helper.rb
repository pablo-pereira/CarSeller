module VehiclesHelper
  def formato(vehicle)
    "<td><strong>#{vehicle.brand.name}</strong></td> <td>#{vehicle.name}</td> <td>(<i>#{vehicle.vehicle_type.name}</i>)</td> ".html_safe
  end
end
