class AddNroFacturaPrestacion < ActiveRecord::Migration
  def up
    add_column :prestaciones, :nro_factura, :string
  end

  def down
    remove_column :prestaciones, :nro_factura
  end
end
