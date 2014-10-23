class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :provincia, :null => false
      t.string :detalle, :null => false
      t.timestamps
    end
  end
end
