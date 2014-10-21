class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :razon_social, :null => false
      t.string :cuit, :null => false
      t.string :direccion, :null => false
      t.timestamps
    end
  end
end
