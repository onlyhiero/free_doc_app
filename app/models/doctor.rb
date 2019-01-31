class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	has_many :special_doctors
	has_many :specialities, through: :special_doctors
	belongs_to :city
end
