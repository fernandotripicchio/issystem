class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nombre, :null => false
      t.integer :provincia, :null => false
      t.integer :departamento, :null => false
      t.timestamps
    end
  end
end