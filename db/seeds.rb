# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless Prestacion.all.blank?
  Prestacion.create(nombre: 'Transporte')
  Prestacion.create(nombre: 'Cuidador Domiciliario')
end

unless Proveedor.all.blank?
  Proveedor.create(razon_social: "Proveedor 1")
  Proveedor.create(razon_social: "Proveedor 2")
end
