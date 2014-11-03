class CreateRegistroItems < ActiveRecord::Migration
  def change
    create_table :registro_items do |t|
      t.integer :afiliado_id, :null => false
      t.integer :registro_prestacion_id, :null => false
      t.timestamps
    end
  end
end
