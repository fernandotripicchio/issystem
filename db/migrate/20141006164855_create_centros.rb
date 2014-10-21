class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|

      t.timestamps
    end
  end
end
