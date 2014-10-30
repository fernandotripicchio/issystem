class Orden < ActiveRecord::Base
  attr_accessible :estado, :fecha, :afiliado_id, :medico_id, :diagnostico_id
  belongs_to :afiliado
  
  def afiliado_nombre
    self.afiliado.apellido_nombre
  end
  
  searchable do
    text :id
    string  :sort_title do
      id.downcase.gsub(/^(an?|the)/, '')
    end
  end    
end
