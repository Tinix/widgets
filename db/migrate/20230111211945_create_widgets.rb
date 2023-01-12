# frozen_string_literal: true

class CreateWidgets < ActiveRecord::Migration[6.1]
  def change
    create_table :widgets do |t|
      t.string :name
      t.string :status
      t.string :type

      t.timestamps
    end
  end
end
