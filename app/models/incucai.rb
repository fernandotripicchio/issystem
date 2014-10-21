class Incucai < ActiveRecord::Base
   attr_accessible :afiliado_id, :fecha_alta, :fecha_ingreso_ugp, :fecha_baja, :centro_id
   belongs_to :afiliado
   belongs_to :centro
end
