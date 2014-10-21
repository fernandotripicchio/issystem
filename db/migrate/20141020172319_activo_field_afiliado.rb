class ActivoFieldAfiliado < ActiveRecord::Migration
  def change
    add_column :afiliados, :activo, :boolean, :default => true
  end
end
