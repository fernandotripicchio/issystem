class CreatePrestaciones < ActiveRecord::Migration
  def change
    create_table :prestaciones do |t|
      t.integer :user_id, :null => false
      t.integer :proveedor_id, :null => false
      t.integer :tipo_prestacion_id, :null => false
      t.integer :afiliado_id, :null => false
      t.integer :monto_factura, :null => false
      t.string :periodo_anio, :null => false
      t.string :periodo_mes, :null => false
      t.text :observaciones
      t.timestamps
    end
  end
end
