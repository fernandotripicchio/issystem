class Prestacion < ActiveRecord::Base
  attr_accessible :user_id, :proveedor_id, :tipo_prestacion_id,  :observaciones
  attr_accessible :nro_factura, :fecha_factura, :monto_factura, :periodo_anio, :periodo_mes

  belongs_to :user
  belongs_to :proveedor
  belongs_to :tipo_prestacion

  ANIOS = [2013, 2014, 2015, 2016,2017,2018,2019,2020]
  MESES = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Setiembre", "Octubre", "Noviembre", "Diciembre"]
end
