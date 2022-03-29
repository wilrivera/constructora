class ProformaController < ApplicationController
	def index
		@proformas = Proforma.all
	end


	def new
		
		@proforma = Proforma.create(importe: 0)
		redirect_to edit_proforma_path(@proforma)
	end

	def edit
		@proyectos_proforma = @proforma.proforma_details
	end
end
