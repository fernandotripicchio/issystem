class RemoveExtraFields < ActiveRecord::Migration
  def change
    remove_column :afiliados, :cod_provincia
    remove_column :afiliados, :cod_localidad
    remove_column :afiliados, :cod_departamento
    remove_column :afiliados, :cod_soc
  end
end
