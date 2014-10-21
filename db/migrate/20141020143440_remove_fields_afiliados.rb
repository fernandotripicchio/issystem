class RemoveFieldsAfiliados < ActiveRecord::Migration
  def change
    remove_column :afiliados, :documento_nro
    remove_column :afiliados, :documento_tipo
    remove_column :afiliados, :beneficio
  end
end
