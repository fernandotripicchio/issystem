class CreateIncucais < ActiveRecord::Migration
  def change
    create_table :incucais do |t|
      t.integer :afiliado_id, :null => false
      t.integer :centro_id, :null => false
      t.date  :fecha_alta
      t.date  :fecha_ingreso_ugp
      t.date  :fecha_baja      
      t.timestamps
    end
  end
end
