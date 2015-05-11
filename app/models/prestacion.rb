class Prestacion < ActiveRecord::Base
  attr_accessible :user_id, :proveedor_id, :tipo_prestacion_id, :afiliado_id, :observaciones
  attr_accessible :nro_factura, :fecha_factura, :monto_factura, :periodo_anio, :periodo_mes  
  
  belongs_to :user
  belongs_to :proveedor
  belongs_to :tipo_prestacion
  belongs_to :afiliado
  
end
