class CambiosRegistroPrestaciones < ActiveRecord::Migration
  def up
    #remove_column :registro_prestaciones, :afiliado_id
    #add_column :registro_prestaciones, :proveedor_id, :integer, :null => false
  end

  def down
  end
end
