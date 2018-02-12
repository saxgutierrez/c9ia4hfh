module RoomsHelper
	def form_title
		@room.new_record? ? "Publicar Producto" : "Modificar Producto"
	end
end
