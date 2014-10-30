class CreatePrestaciones < ActiveRecord::Migration
  def change
    create_table :prestaciones do |t|
      t.string  :nombre, :null => false
      t.timestamps
    end
  end
end
