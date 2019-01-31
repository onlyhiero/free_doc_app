class ChangeDoctor < ActiveRecord::Migration[5.2]
  def change
  	remove_column :doctors, :speciality, :string
  	remove_column :doctors, :postal_code, :integer
  	add_reference :doctors, :city, foreign_key: true
  	add_reference :patients, :city, foreign_key: true
  	add_reference :appointments, :city, foreign_key: true
  end
end
