class NewLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.integer :provincia, :null => false
      t.integer :departamento, :null => false
      t.integer :localidad, :null => false
      t.string  :codigo_postal
      t.string  :nombre, :null => false
      t.timestamps
    end
  end
end
