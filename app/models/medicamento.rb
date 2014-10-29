class Medicamento < ActiveRecord::Base
  attr_accessible :nombre, :estado, :descripcion, :codigo_universal
end
