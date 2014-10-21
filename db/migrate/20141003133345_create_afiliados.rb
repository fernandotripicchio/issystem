class CreateAfiliados < ActiveRecord::Migration
  def change
    create_table :afiliados do |t|
      t.string :apellido_nombre
      t.string :documento_nro
      t.string :documento_tipo
      t.string :beneficio
      t.timestamps
    end
  end
end
