class AddMissingFieldsAfiliados < ActiveRecord::Migration
  def up
    add_column :afiliados, :domicilio_calle, :string
    add_column :afiliados, :incapacidad, :integer
    add_column :afiliados, :domicilio_nro, :string
    add_column :afiliados, :domicilio_piso, :string
    add_column :afiliados, :domicilio_depto, :string
    add_column :afiliados, :domicilio_cp, :string
    add_column :afiliados, :codigo_provincia, :integer
    add_column :afiliados, :codigo_localidad, :integer
    add_column :afiliados, :codigo_departamento, :integer   
  end

  def down
    remove_column :afiliados, :domicilio_calle
    remove_column :afiliados, :incapacidad
    remove_column :afiliados, :domicilio_nro
    remove_column :afiliados, :domicilio_piso
    remove_column :afiliados, :domicilio_depto
    remove_column :afiliados, :domicilio_cp
    remove_column :afiliados, :codigo_provincia
    remove_column :afiliados, :codigo_localidad
    remove_column :afiliados, :codigo_departamento   
  end
end
