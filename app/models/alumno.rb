class Alumno < ApplicationRecord
	validates :nombres, presence: {
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

    validates :email, presence: {
        message: "es requerido"
    }, uniqueness: {
        message: "ya esta registrado",
        case_sensitive: false
    }

    validates :edad, presence: {
        message: "es requerido"
    }
end
