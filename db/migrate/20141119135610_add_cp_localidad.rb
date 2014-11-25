class AddCpLocalidad < ActiveRecord::Migration
  def up
  	add_column :localidades, :codigo_postal, :string
  end

  def down
  end
end
