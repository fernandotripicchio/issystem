class AddFechaFacturaPrestacion < ActiveRecord::Migration
  def up
    add_column :prestaciones, :fecha_factura, :date
  end

  def down
    remove_column :prestaciones, :fecha_factura    
  end
end
