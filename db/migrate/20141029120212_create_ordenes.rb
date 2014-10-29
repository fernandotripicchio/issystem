class CreateOrdenes < ActiveRecord::Migration
  def change
    create_table :ordenes do |t|
      t.boolean :estado, :default => true
      t.date :fecha
      t.integer :afiliado_id, :null => false
      t.integer :medico_id, :null => false
      t.integer :diagnostico_id, :null => false
      t.timestamps
    end
  end
end
