class AddAfiliadoRegistroPrestaciones < ActiveRecord::Migration
  def up
    add_column :registro_prestaciones, :afiliado_id, :integer, :null => false
  end

  def down
    remove_column :registro_prestaciones, :afiliado_id
  end
end
