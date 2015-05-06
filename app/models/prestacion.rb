class Prestacion < ActiveRecord::Base
  attr_accessible :user_id, :proveedor_id, :tipo_prestacion_id, :afiliado_id
  attr_accesible :monto_factura, :periodo_anio, :periodo_mes  
end
