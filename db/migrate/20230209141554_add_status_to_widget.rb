class AddStatusToWidget < ActiveRecord::Migration[6.1]
  def change
    add_column :widgets, :status, :string
  end
end
