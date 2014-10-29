# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'incucai', 'incucais'
  inflect.irregular 'proveedor', 'proveedores'
  inflect.irregular 'provincia', 'provincias'
  inflect.irregular 'localidad', 'localidades'
  inflect.irregular 'departamento', 'departamentos'  
  inflect.irregular 'orden', 'ordenes'
  inflect.irregular 'laboratorio', 'laboratorios'
  inflect.irregular 'remito', 'remitos'
  inflect.irregular 'medicamento', 'medicamentos'
  inflect.irregular 'diagnostico', 'diagnosticos'
end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
