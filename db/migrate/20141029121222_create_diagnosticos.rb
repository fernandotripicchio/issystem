class CreateDiagnosticos < ActiveRecord::Migration
  def change
    create_table :diagnosticos do |t|
      t.string :nombre
      t.timestamps
    end
  end
end
