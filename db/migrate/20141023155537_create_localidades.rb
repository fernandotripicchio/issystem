class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :nombre, :null => false
      t.integer :provincia, :null => false
      t.integer :departamento, :null => false
      t.integer :localidad, :null => false
      t.timestamps
    end
  end
end
