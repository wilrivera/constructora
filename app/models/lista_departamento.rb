class ListaDepartamento < ApplicationRecord	
	belongs_to :proyecto
	has_many :detalle_departamento
	mount_uploader :foto, AvatarUploader
end