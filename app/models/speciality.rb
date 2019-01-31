class Speciality < ApplicationRecord
	has_many :special_doctors
	has_many :specialities, through: :special_doctors
end
