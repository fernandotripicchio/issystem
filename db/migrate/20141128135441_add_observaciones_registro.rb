class AddObservacionesRegistro < ActiveRecord::Migration
  def up
    add_column :registro_prestaciones, :observaciones, :text
  end

  def down
    remove_column :registro_prestaciones, :observaciones
  end
end
