class Proyecto < ApplicationRecord
	
	has_many :departamentos
	has_many :lista_departamentos
	
	
	has_one :detalle_departamento, through: :departamentos

	mount_uploader :avatar, AvatarUploader

end
