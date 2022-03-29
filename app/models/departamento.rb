class Departamento < ApplicationRecord	
	belongs_to :proyecto

	has_one :detalle_departamento, dependent: :destroy
	
	mount_uploader :foto, AvatarUploader
end
