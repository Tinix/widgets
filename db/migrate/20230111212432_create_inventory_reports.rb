# frozen_string_literal: true

class CreateInventoryReports < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_reports, &:timestamps
  end
end
