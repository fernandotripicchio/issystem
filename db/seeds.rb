# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if TipoPrestacion.all.blank?
  TipoPrestacion.create(tipo: 'Medicamentos')
  TipoPrestacion.create(tipo: 'Odontologia')
  TipoPrestacion.create(tipo: 'Rehabilitacion')
  TipoPrestacion.create(tipo: 'Protesis y Ortesis')
  TipoPrestacion.create(tipo: 'Implantes y Transplantes')
  TipoPrestacion.create(tipo: 'Atencion Adultos Mayores')
  TipoPrestacion.create(tipo: 'Salud Mental')
  TipoPrestacion.create(tipo: 'Optica y Audifonos')
  TipoPrestacion.create(tipo: 'Transporte')
  TipoPrestacion.create(tipo: 'Apoyo y Discapacidad')
  TipoPrestacion.create(tipo: 'Viaticos y Traslados Afiliados')
  TipoPrestacion.create(tipo: 'Viaticos y Traslados Personal')
  TipoPrestacion.create(tipo: 'Sueldos y Honorarios No Medico')
  TipoPrestacion.create(tipo: 'Gastos de Funcionamiento Administrativo')
end

unless Proveedor.all.blank?
  Proveedor.create(razon_social: "Proveedor 1")
  Proveedor.create(razon_social: "Proveedor 2")
end
