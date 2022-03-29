class Citation < ApplicationRecord

    validates :nombre, presence: {message: "es un campo requerido."}

    validates :dni, presence: {
        message: "es un campo requerido."
    }, length: {
        minimum: 8,
        too_short: "debe tener 8 digitos"
    }, uniqueness: {
        message: "ya se encuentra registrado"
    }

    validates :email,presence:{
        message: "es un campo requerido."
    }, uniqueness:{
        message: "ya se encuentra registrado",
        case_sensitive: false
    }


end
