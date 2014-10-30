class CreateRegistroPrestaciones < ActiveRecord::Migration
  def change
    create_table :registro_prestaciones do |t|
      t.integer :prestacion_id, :null => false
      t.date :fecha_factura, :null => false
      t.integer :numero_factura, :null => false
      t.string :periodo, :null => false
      t.integer :proveedor_id, :null => false
      t.timestamps
    end
  end
end
