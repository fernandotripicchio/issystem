class AddNewFieldsAfiliados < ActiveRecord::Migration
  def up
    add_column :afiliados, :fecha_nacimiento, :date
    add_column :afiliados, :fecha_alta, :date 
    add_column :afiliados, :fecha_baja, :date
    add_column :afiliados, :motivo, :integer
    add_column :afiliados, :cod_provincia, :integer
    add_column :afiliados, :cod_localidad, :integer
    add_column :afiliados, :cod_departamento, :integer
    add_column :afiliados, :cod_soc, :string
  end

  def down
    remove_column :afiliados, :fecha_nacimiento
    remove_column :afiliados, :fecha_alta 
    remove_column :afiliados, :fecha_baja
    remove_column :afiliados, :motivo
    remove_column :afiliados, :cod_provincia
    remove_column :afiliados, :cod_localidad
    remove_column :afiliados, :cod_departamento
    remove_column :afiliados, :cod_soc
  end
end
