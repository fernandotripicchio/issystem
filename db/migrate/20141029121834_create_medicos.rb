class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombre, :null => false
      t.string :matricula, :null => false
      t.timestamps
    end
  end
end
