class CreateInventoryReports < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_reports do |t|

      t.timestamps
    end
  end
end
