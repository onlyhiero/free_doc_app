class SpecialDoctor < ApplicationRecord
	belongs_to :speciality
	belongs_to :doctor
end
