class AddFieldsAfiliados < ActiveRecord::Migration
  def up
    add_column :afiliados, :clave_excaja, :string, :length => 40
    add_column :afiliados, :clave_numero, :string, :length => 40
    add_column :afiliados, :clave_coparticipe, :string, :length => 40
    add_column :afiliados, :clave_parentezco, :string, :length => 40
    add_column :afiliados, :ley_aplicada, :string, :length => 40
    add_column :afiliados, :sexo, :string, :length => 1
    add_column :afiliados, :estado_civil, :string, :length => 10
    add_column :afiliados, :tipo_documento, :string, :length => 2
    add_column :afiliados, :numero_documento, :string, :length => 15
    add_column :afiliados, :clave_tipo, :string, :length => 10
    
  end

  def down
    remove_column :afiliados, :clave_excaja
    remove_column :afiliados, :clave_numero
    remove_column :afiliados, :clave_coparticipe
    remove_column :afiliados, :clave_parentezco
    remove_column :afiliados, :ley_aplicada
    remove_column :afiliados, :sexo
    remove_column :afiliados, :estado_civil
    remove_column :afiliados, :tipo_documento
    remove_column :afiliados, :numero_documento
    remove_column :afiliados, :clave_tipo
  end
end
