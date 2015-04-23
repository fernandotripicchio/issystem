class AddTipoPrestacion < ActiveRecord::Migration
  def up
    add_column :prestaciones, :tipo_prestacion_id, :integer
  end

  def down
    remove_column :prestaciones, :tipo_prestacion_id
  end
end
