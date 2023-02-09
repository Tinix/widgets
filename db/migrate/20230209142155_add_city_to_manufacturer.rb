class AddCityToManufacturer < ActiveRecord::Migration[6.1]
  def change
    add_column :manufacturers, :city, :string
  end
end
