class StaticController < ApplicationController

	layout 'static'
	
	def aboutus
	end

	def contactus
	end

	def services
	end

	def faq
	end

	def departamentos
	end

	def proforma


	end

	#Mi metodo Post
	def mimetodo
        puts "------- Datos enviados por el formulario -------------"
        puts
        p1 = params[:contact][:precio]
        p2 = params[:contact][:area]
        p3 = params[:contact][:numhbitacion]
        p4 = params[:contact][:prueba]

        puts "El valor del campo precio es: #{p1}"
        puts "El valor del campo area es: #{p2}"
        puts "El valor del campo num Habitacion es: #{p3}"
        puts
        puts "--------Fin -----------"
    end
    
    def detalledepartamento
    end

end

