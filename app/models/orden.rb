class Orden < ActiveRecord::Base
  attr_accessible :estado, :fecha, :afiliado_id, :medico_id, :diagnostico_id
  
end
