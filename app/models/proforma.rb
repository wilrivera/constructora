class Proforma < ApplicationRecord
	has_many :proforma_details, dependent: destroy
end