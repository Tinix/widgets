class AddPostCodeToManufacturer < ActiveRecord::Migration[6.1]
  def change
    add_column :manufacturers, :post_code, :integer
  end
end
