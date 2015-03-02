class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.integer :afiliado_id, null: false
      t.string :localidad
      t.date :fecha
      t.integer :diagnostico_id
      t.string  :motivo
      t.boolean :urgente
      t.boolean :autoriza
      t.boolean :laboratorio
      t.boolean :radiologia
      t.boolean :alta_complejidad
      t.timestamps
    end
  end
end
