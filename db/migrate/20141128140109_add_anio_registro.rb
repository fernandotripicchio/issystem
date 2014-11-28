class AddAnioRegistro < ActiveRecord::Migration
  def up
    add_column :registro_prestaciones, :anio, :integer
  end

  def down
    remove_column :registro_prestaciones, :anio
  end
end
