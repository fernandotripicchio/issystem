class CreateTipoPrestaciones < ActiveRecord::Migration
  def change
    create_table :tipo_prestaciones do |t|
      t.string  :tipo
      t.timestamps
    end
  end
end
