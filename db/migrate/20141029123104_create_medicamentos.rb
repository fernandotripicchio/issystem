class CreateMedicamentos < ActiveRecord::Migration
  def change
    create_table :medicamentos do |t|
      t.string :nombre 
      t.boolean :estado, :default => true
      t.string :descripcion
      t.string :codigo_universal
      t.timestamps
    end
  end
end
