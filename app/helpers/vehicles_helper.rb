module VehiclesHelper
	def formato(vehicle)
		"<td><strong>#{vehicle.brand.name}</strong></td> <td>#{vehicle.name}</td> <td>(<i>#{vehicle.vehicle_type.name}</i>)</td> ".html_safe
	end

	def dollar_oficial_compra
		Dollar.find(:first, :params => {:dollar_type => 1}).buyer.to_s

	end

	def dollar_oficial_venta
		Dollar.find(:first, :params => {:dollar_type => 1}).seller.to_s

	end


	def dollar_blue_compra
		Dollar.find(:last, :params => {:dollar_type => 2}).seller.to_s

	end
	def dollar_blue_venta
		Dollar.find(:last, :params => {:dollar_type => 2}).buyer.to_s

	end
end
