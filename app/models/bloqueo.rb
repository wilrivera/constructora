class Bloqueo < ApplicationRecord
	validates :nombres, presence: { 
		message: "es requerido" 
	}

		validates :apellidos, presence: { 
		message: "es requerido" 
	}

    validates :dni, presence: {
        message: "es requerido"
    }, length: {
        minimum: 8,
        too_short: "debe tener 8 digitos"
    }, uniqueness: {
        message: "ya esta registrado"
    }


		validates :proyecto, presence: { 
		message: "es requerido" 
	}

		validates :departamento, presence: { 
		message: "es requerido" 
	}

		validates :voucher, presence: { 
		message: "es requerido" 
	}

		validates :tipo, presence: { 
		message: "es requerido" 
	}

		validates :monto, presence: { 
		message: "es requerido" 
	}
end
