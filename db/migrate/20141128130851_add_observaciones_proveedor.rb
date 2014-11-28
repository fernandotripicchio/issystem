class AddObservacionesProveedor < ActiveRecord::Migration
  def up
    add_column :proveedores, :observaciones, :text
  end

  def down
    remove_column :proveedores, :observaciones
  end
end
