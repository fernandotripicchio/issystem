class CreateMotivos < ActiveRecord::Migration
  def change
    create_table :motivos do |t|

      t.timestamps
    end
  end
end
