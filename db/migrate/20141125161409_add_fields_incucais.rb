class AddFieldsIncucais < ActiveRecord::Migration
  def up
    add_column :incucais, :kilometros, :integer
    add_column :incucais, :etiologia, :string
    add_column :incucais, :edad, :integer
  end

  def down
  end
end
